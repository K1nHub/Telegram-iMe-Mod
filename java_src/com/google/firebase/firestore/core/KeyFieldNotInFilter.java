package com.google.firebase.firestore.core;

import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import java.util.List;
/* loaded from: classes4.dex */
public class KeyFieldNotInFilter extends FieldFilter {
    private final List<DocumentKey> keys;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KeyFieldNotInFilter(com.google.firebase.firestore.model.FieldPath r2, com.google.firestore.p021v1.Value r3) {
        /*
            r1 = this;
            com.google.firebase.firestore.core.Filter$Operator r0 = com.google.firebase.firestore.core.Filter.Operator.NOT_IN
            r1.<init>(r2, r0, r3)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.keys = r2
            java.util.List r3 = com.google.firebase.firestore.core.KeyFieldInFilter.extractDocumentKeysFromArrayValue(r0, r3)
            r2.addAll(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.firestore.core.KeyFieldNotInFilter.<init>(com.google.firebase.firestore.model.FieldPath, com.google.firestore.v1.Value):void");
    }

    @Override // com.google.firebase.firestore.core.FieldFilter, com.google.firebase.firestore.core.Filter
    public boolean matches(Document document) {
        return !this.keys.contains(document.getKey());
    }
}
