package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class Task<ResultT> {
    public abstract Task<ResultT> addOnCompleteListener(OnCompleteListener<ResultT> onCompleteListener);

    public abstract Task<ResultT> addOnFailureListener(Executor executor, OnFailureListener onFailureListener);

    public abstract Task<ResultT> addOnSuccessListener(OnSuccessListener<? super ResultT> onSuccessListener);

    public abstract Task<ResultT> addOnSuccessListener(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener);

    public abstract Exception getException();

    public abstract ResultT getResult();

    public abstract boolean isComplete();

    public abstract boolean isSuccessful();
}
