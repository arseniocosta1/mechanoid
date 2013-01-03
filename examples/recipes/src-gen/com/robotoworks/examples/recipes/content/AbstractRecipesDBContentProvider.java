/*
 * Generated by Robotoworks Mechanoid
 */
package com.robotoworks.examples.recipes.content;

import java.util.ArrayList;
import java.util.List;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.robotoworks.mechanoid.content.MechanoidContentProvider;
import com.robotoworks.mechanoid.sqlite.MechanoidSQLiteOpenHelper;
import com.robotoworks.mechanoid.sqlite.ActiveRecord;
import com.robotoworks.mechanoid.sqlite.SQuery;

import com.robotoworks.examples.recipes.content.RecipesDBContract.Recipes;

import com.robotoworks.examples.recipes.content.actions.RecipesActions;
import com.robotoworks.examples.recipes.content.actions.RecipesByIdActions;
public abstract class AbstractRecipesDBContentProvider extends MechanoidContentProvider {

    private static final UriMatcher sUriMatcher;
	private static final String[] sContentTypes;
	private static final Class<?>[] sActions;
    
	private static final int RECIPES = 0;
	private static final int RECIPES_ID = 1;

	
	public static final int NUM_URI_MATCHERS = 2;

	static {
		sUriMatcher = buildUriMatcher();
	
		sContentTypes = new String[NUM_URI_MATCHERS];

		sContentTypes[RECIPES] = Recipes.CONTENT_TYPE;
		sContentTypes[RECIPES_ID] = Recipes.ITEM_CONTENT_TYPE;
		
		sActions = new Class<?>[NUM_URI_MATCHERS];

		sActions[RECIPES] = RecipesActions.class;
		sActions[RECIPES_ID] = RecipesByIdActions.class;
		
		
	}
	
    private static UriMatcher buildUriMatcher() {
        final UriMatcher matcher = new UriMatcher(UriMatcher.NO_MATCH);
        final String authority = RecipesDBContract.CONTENT_AUTHORITY;

		// Tables
		matcher.addURI(authority, "recipes", RECIPES);
		matcher.addURI(authority, "recipes/#", RECIPES_ID);

		// Views

		// User Actions
        return matcher;
    }

	@Override
	public String getType(Uri uri) {
        final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		return sContentTypes[match];
	}

	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		int affected = createActions(sActions[match]).delete(this, uri, selection, selectionArgs);
		
		if(affected > 0) {
			tryNotifyChange(uri);
		}
		
		return affected;
	}

	@Override
	public Uri insert(Uri uri, ContentValues values) {

		final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		Uri newUri = createActions(sActions[match]).insert(this, uri, values);
		
		if(newUri != null) {
			tryNotifyChange(uri);
		}
		
		return newUri;
	}
	
	@Override
    public int bulkInsert(Uri uri, ContentValues[] values) {
    	
		final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		int affected = createActions(sActions[match]).bulkInsert(this, uri, values);
		
		if(affected > 0) {
			tryNotifyChange(uri);
		}
		
		return affected;
    }

	@Override
	protected MechanoidSQLiteOpenHelper createOpenHelper(Context context) {
        return new RecipesDBOpenHelper(context);
	}

	@Override
	public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
		final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		Cursor cursor = createActions(sActions[match]).query(this, uri, projection, selection, selectionArgs, sortOrder);

		trySetNotificationUri(cursor, uri);
		
		return cursor;
	}

	@Override
	public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
		final int match = sUriMatcher.match(uri);

		if(match == UriMatcher.NO_MATCH) {
			throw new UnsupportedOperationException("Unknown uri: " + uri);
		}
		
		int affected = createActions(sActions[match]).update(this, uri, values, selection, selectionArgs);

		if(affected > 0) {
			tryNotifyChange(uri);
		}

		return affected;
	}

    public <T extends ActiveRecord> List<T> selectRecords(Uri uri, SQuery sQuery, String sortOrder) {
        final int match = sUriMatcher.match(uri);

        if(match == UriMatcher.NO_MATCH) {
            throw new UnsupportedOperationException("Unknown uri: " + uri);
        }
        
        return createActions(sActions[match]).selectRecords(this, uri, sQuery, sortOrder);
    }
    
    @Override
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> operations)
            throws OperationApplicationException {
        final SQLiteDatabase db = getOpenHelper().getWritableDatabase();
        db.beginTransaction();
        try {
            final int numOperations = operations.size();
            final ContentProviderResult[] results = new ContentProviderResult[numOperations];
            for (int i = 0; i < numOperations; i++) {
                results[i] = operations.get(i).apply(this, results, i);
            }
            db.setTransactionSuccessful();
            return results;
        } finally {
            db.endTransaction();
        }
    }
    

}