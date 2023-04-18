package com.google.firebase.p020ml.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
/* renamed from: com.google.firebase.ml.common.FirebaseMLException */
/* loaded from: classes3.dex */
public class FirebaseMLException extends FirebaseException {
    private final int code;

    public FirebaseMLException(String str, int i) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."));
        Preconditions.checkArgument(i != 0, "A FirebaseMLException should never be thrown for OK");
        this.code = i;
    }

    public FirebaseMLException(String str, int i, Throwable th) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."), th);
        Preconditions.checkArgument(i != 0, "A FirebaseMLException should never be thrown for OK");
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
