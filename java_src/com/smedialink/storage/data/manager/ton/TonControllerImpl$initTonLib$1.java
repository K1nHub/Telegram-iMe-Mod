package com.smedialink.storage.data.manager.ton;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
public final class TonControllerImpl$initTonLib$1 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Boolean>> {
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$initTonLib$1(TonControllerImpl tonControllerImpl) {
        super(1);
        this.this$0 = tonControllerImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Boolean> invoke(Result<? extends String> result) {
        return invoke2((Result<String>) result);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Boolean> invoke2(Result<String> result) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Observable initTonLibObservable;
        Observable initTonLibObservable2;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            initTonLibObservable2 = this.this$0.getInitTonLibObservable((String) ((Result.Success) result).getData());
            return initTonLibObservable2;
        } else if (result instanceof Result.Error) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            String tonConfigJsonString = cryptoPreferenceHelper.getTonConfigJsonString();
            if (!(tonConfigJsonString.length() > 0)) {
                Observable just = Observable.just(Boolean.FALSE);
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
            initTonLibObservable = this.this$0.getInitTonLibObservable(tonConfigJsonString);
            return initTonLibObservable;
        } else {
            return Observable.empty();
        }
    }
}
