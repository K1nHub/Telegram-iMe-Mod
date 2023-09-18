package com.google.firebase.firestore.util;
/* loaded from: classes4.dex */
public class ApiUtil {
    public static AssertionError newAssertionError(String str, Throwable th) {
        AssertionError assertionError = new AssertionError(str);
        assertionError.initCause(th);
        return assertionError;
    }
}
