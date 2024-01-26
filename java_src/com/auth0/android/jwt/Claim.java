package com.auth0.android.jwt;
/* loaded from: classes.dex */
public interface Claim {
    <T> T asObject(Class<T> cls) throws DecodeException;

    String asString();
}
