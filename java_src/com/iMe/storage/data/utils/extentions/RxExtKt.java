package com.iMe.storage.data.utils.extentions;

import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* loaded from: classes3.dex */
public final class RxExtKt {
    public static final void autoDispose(Disposable disposable, CompositeDisposable subs) {
        Intrinsics.checkNotNullParameter(disposable, "<this>");
        Intrinsics.checkNotNullParameter(subs, "subs");
        subs.add(disposable);
    }
}
