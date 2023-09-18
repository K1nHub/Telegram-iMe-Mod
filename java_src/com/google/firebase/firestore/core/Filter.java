package com.google.firebase.firestore.core;

import com.google.firebase.firestore.model.Document;
/* loaded from: classes4.dex */
public abstract class Filter {
    public abstract String getCanonicalId();

    public abstract boolean matches(Document document);

    /* loaded from: classes4.dex */
    public enum Operator {
        LESS_THAN("<"),
        LESS_THAN_OR_EQUAL("<="),
        EQUAL("=="),
        NOT_EQUAL("!="),
        GREATER_THAN(">"),
        GREATER_THAN_OR_EQUAL(">="),
        ARRAY_CONTAINS("array_contains"),
        ARRAY_CONTAINS_ANY("array_contains_any"),
        IN("in"),
        NOT_IN("not_in");
        
        private final String text;

        Operator(String str) {
            this.text = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.text;
        }
    }
}
