package com.iMe.feature.cacheManager;

import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CacheManagerStrategy.kt */
/* loaded from: classes4.dex */
public final class CacheManagerStrategy {
    public static final CacheManagerStrategy INSTANCE = new CacheManagerStrategy();

    private CacheManagerStrategy() {
    }

    public static /* synthetic */ Observable fetch$default(CacheManagerStrategy cacheManagerStrategy, Observable observable, Observable observable2, Function1 function1, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return cacheManagerStrategy.fetch(observable, observable2, function1, z);
    }

    public final <T> Observable<T> fetch(Observable<T> fromDb, Observable<T> fromServer, Function1<? super T, Unit> persist, boolean z) {
        Intrinsics.checkNotNullParameter(fromDb, "fromDb");
        Intrinsics.checkNotNullParameter(fromServer, "fromServer");
        Intrinsics.checkNotNullParameter(persist, "persist");
        return z ? fromServer : fetchInternal(fromDb, fromServer, persist);
    }

    private final <T> Observable<T> fetchInternal(Observable<T> observable, Observable<T> observable2, final Function1<? super T, Unit> function1) {
        Observable<T> distinctUntilChanged = Observable.concat(observable, observable2.doOnNext(new Consumer() { // from class: com.iMe.feature.cacheManager.CacheManagerStrategy$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CacheManagerStrategy.fetchInternal$lambda$0(Function1.this, obj);
            }
        })).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "concat(fromDb, fromServe…)).distinctUntilChanged()");
        return distinctUntilChanged;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchInternal$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
