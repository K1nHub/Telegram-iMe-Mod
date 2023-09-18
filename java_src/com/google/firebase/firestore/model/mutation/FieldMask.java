package com.google.firebase.firestore.model.mutation;

import com.google.firebase.firestore.model.FieldPath;
import java.util.Set;
/* loaded from: classes4.dex */
public final class FieldMask {
    private final Set<FieldPath> mask;

    public static FieldMask fromSet(Set<FieldPath> set) {
        return new FieldMask(set);
    }

    private FieldMask(Set<FieldPath> set) {
        this.mask = set;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FieldMask.class != obj.getClass()) {
            return false;
        }
        return this.mask.equals(((FieldMask) obj).mask);
    }

    public String toString() {
        return "FieldMask{mask=" + this.mask.toString() + "}";
    }

    public int hashCode() {
        return this.mask.hashCode();
    }

    public Set<FieldPath> getMask() {
        return this.mask;
    }
}
