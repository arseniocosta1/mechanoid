package com.mechanoid.net;

import java.io.InputStreamReader;
import java.nio.charset.Charset;
import com.robotoworks.mechanoid.internal.util.JsonReader;
import java.io.InputStream;
import com.robotoworks.mechanoid.net.TransformException;
import com.robotoworks.mechanoid.internal.util.JsonToken;
import com.robotoworks.mechanoid.net.TransformerProvider;
import com.robotoworks.mechanoid.util.Closeables;
import java.io.IOException;

public class SkippingWithItemResponse  {
	private Item inner;
	public Item getInner(){
		return this.inner;
	}
	public void setInner(Item value){
		this.inner = value;
	}
	
	public SkippingWithItemResponse(TransformerProvider provider, InputStream inStream) throws TransformException {
		JsonReader source = null;
		try {
			if(inStream != null) {
				source = new JsonReader(new InputStreamReader(inStream, Charset.defaultCharset()));
		
			SkippingWithItemResponse target = this;
			
		
			source.beginObject();
			
			while(source.hasNext()) {
				String name = source.nextName();
				
				if(name.equals("outer")) {
					if(source.peek() != JsonToken.NULL) {
						source.beginObject();
						
						while(source.hasNext()) {
							name = source.nextName();
							
							if(name.equals("inner")) {
								if(source.peek() != JsonToken.NULL) {
									Item targetMember = provider.get(ItemInputTransformer.class).transform(source);
									target.setInner(targetMember);
								}
							}
							else {
								source.skipValue();
							}
						}
						
						source.endObject();
					}
				}
				else {
					source.skipValue();
				}
			}
			
			source.endObject();

			}
		} catch(Exception x) {
			throw new TransformException(x);
		} finally {
			Closeables.closeSilently(source);
		}
	}
}