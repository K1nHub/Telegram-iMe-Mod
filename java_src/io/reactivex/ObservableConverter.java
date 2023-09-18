package io.reactivex;
/* loaded from: classes6.dex */
public interface ObservableConverter<T, R> {
    R apply(Observable<T> observable);
}
