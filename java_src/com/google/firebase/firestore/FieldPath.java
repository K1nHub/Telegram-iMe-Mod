package com.google.firebase.firestore;

import com.google.firebase.firestore.util.Preconditions;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class FieldPath {
    private static final Pattern RESERVED = Pattern.compile("[~*/\\[\\]]");
    private final com.google.firebase.firestore.model.FieldPath internalPath;

    static {
        new FieldPath(com.google.firebase.firestore.model.FieldPath.KEY_PATH);
    }

    private FieldPath(List<String> list) {
        this.internalPath = com.google.firebase.firestore.model.FieldPath.fromSegments(list);
    }

    private FieldPath(com.google.firebase.firestore.model.FieldPath fieldPath) {
        this.internalPath = fieldPath;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.firebase.firestore.model.FieldPath getInternalPath() {
        return this.internalPath;
    }

    /* renamed from: of */
    public static FieldPath m713of(String... strArr) {
        Preconditions.checkArgument(strArr.length > 0, "Invalid field path. Provided path must not be empty.", new Object[0]);
        int i = 0;
        while (i < strArr.length) {
            boolean z = (strArr[i] == null || strArr[i].isEmpty()) ? false : true;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid field name at argument ");
            i++;
            sb.append(i);
            sb.append(". Field names must not be null or empty.");
            Preconditions.checkArgument(z, sb.toString(), new Object[0]);
        }
        return new FieldPath(Arrays.asList(strArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FieldPath fromDotSeparatedPath(String str) {
        Preconditions.checkNotNull(str, "Provided field path must not be null.");
        Preconditions.checkArgument(!RESERVED.matcher(str).find(), "Use FieldPath.of() for field names containing '~*/[]'.", new Object[0]);
        try {
            return m713of(str.split("\\.", -1));
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Invalid field path (" + str + "). Paths must not be empty, begin with '.', end with '.', or contain '..'");
        }
    }

    public String toString() {
        return this.internalPath.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FieldPath.class != obj.getClass()) {
            return false;
        }
        return this.internalPath.equals(((FieldPath) obj).internalPath);
    }

    public int hashCode() {
        return this.internalPath.hashCode();
    }
}
