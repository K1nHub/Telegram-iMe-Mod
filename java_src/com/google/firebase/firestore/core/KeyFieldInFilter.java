package com.google.firebase.firestore.core;

import com.google.firebase.firestore.core.Filter;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.p021v1.Value;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class KeyFieldInFilter extends FieldFilter {
    private final List<DocumentKey> keys;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KeyFieldInFilter(com.google.firebase.firestore.model.FieldPath r2, com.google.firestore.p021v1.Value r3) {
        /*
            r1 = this;
            com.google.firebase.firestore.core.Filter$Operator r0 = com.google.firebase.firestore.core.Filter.Operator.IN
            r1.<init>(r2, r0, r3)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.keys = r2
            java.util.List r3 = extractDocumentKeysFromArrayValue(r0, r3)
            r2.addAll(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.firestore.core.KeyFieldInFilter.<init>(com.google.firebase.firestore.model.FieldPath, com.google.firestore.v1.Value):void");
    }

    @Override // com.google.firebase.firestore.core.FieldFilter, com.google.firebase.firestore.core.Filter
    public boolean matches(Document document) {
        return this.keys.contains(document.getKey());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<DocumentKey> extractDocumentKeysFromArrayValue(Filter.Operator operator, Value value) {
        Assert.hardAssert(operator == Filter.Operator.IN || operator == Filter.Operator.NOT_IN, "extractDocumentKeysFromArrayValue requires IN or NOT_IN operators", new Object[0]);
        Assert.hardAssert(Values.isArray(value), "KeyFieldInFilter/KeyFieldNotInFilter expects an ArrayValue", new Object[0]);
        ArrayList arrayList = new ArrayList();
        for (Value value2 : value.getArrayValue().getValuesList()) {
            boolean isReferenceValue = Values.isReferenceValue(value2);
            Assert.hardAssert(isReferenceValue, "Comparing on key with " + operator.toString() + ", but an array value was not a ReferenceValue", new Object[0]);
            arrayList.add(DocumentKey.fromName(value2.getReferenceValue()));
        }
        return arrayList;
    }
}
