/*
* generated by Xtext
*/
package com.robotoworks.mechanoid.net.ui.outline;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.ui.editor.outline.IOutlineNode;
import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider;

import com.robotoworks.mechanoid.net.netModel.ComplexTypeDeclaration;
import com.robotoworks.mechanoid.net.netModel.EnumTypeDeclaration;
import com.robotoworks.mechanoid.net.netModel.HttpMethod;
import com.robotoworks.mechanoid.net.netModel.Member;

/**
 * customization of the default outline structure
 * 
 */
public class NetModelOutlineTreeProvider extends DefaultOutlineTreeProvider {
    protected boolean _isLeaf(Member modelElement) {
        return true;
    }
    
    protected boolean _isLeaf(HttpMethod modelElement) {
        return true;
    }
    
    protected void _createChildren(IOutlineNode parent, ComplexTypeDeclaration element) {
        for (EObject childElement : element.getLiteral().getMembers())
            createNode(parent, childElement);
    }
    
    protected void _createChildren(IOutlineNode parent, EnumTypeDeclaration element) {
        for (EObject childElement : element.getLiteral().getMembers())
            createNode(parent, childElement);
    }
}
