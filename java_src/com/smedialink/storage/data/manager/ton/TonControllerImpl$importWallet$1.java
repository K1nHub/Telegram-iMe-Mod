package com.smedialink.storage.data.manager.ton;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import drinkless.org.ton.TonApi;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
final class TonControllerImpl$importWallet$1 extends Lambda implements Function1<Boolean, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ String $guid;
    final /* synthetic */ List<String> $words;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$importWallet$1(TonControllerImpl tonControllerImpl, List<String> list, String str) {
        super(1);
        this.this$0 = tonControllerImpl;
        this.$words = list;
        this.$guid = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<Wallet>> invoke(Boolean initResult) {
        Observable sendRequest;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(initResult, "initResult");
        if (!initResult.booleanValue()) {
            Observable just = Observable.just(TonControllerImpl.getTonApiErrorResult$default(this.this$0, null, 1, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        sendRequest = this.this$0.sendRequest(new TonApi.DeleteAllKeys());
        schedulersProvider = this.this$0.schedulersProvider;
        Observable subscribeOn = sendRequest.subscribeOn(schedulersProvider.mo707io());
        final TonControllerImpl tonControllerImpl = this.this$0;
        final List<String> list = this.$words;
        final String str = this.$guid;
        return subscribeOn.flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$importWallet$1$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource invoke$lambda$1;
                invoke$lambda$1 = TonControllerImpl$importWallet$1.invoke$lambda$1(TonControllerImpl.this, list, str, obj);
                return invoke$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$1(final TonControllerImpl this$0, final List words, final String guid, Object it) {
        Observable sendRequest;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(it, "it");
        sendRequest = this$0.sendRequest(new TonApi.ImportKey(new byte[0], new byte[0], new TonApi.ExportedKey((String[]) words.toArray(new String[0]))));
        schedulersProvider = this$0.schedulersProvider;
        return sendRequest.subscribeOn(schedulersProvider.mo707io()).flatMap(new Function() { // from class: com.smedialink.storage.data.manager.ton.TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource invoke$lambda$1$lambda$0;
                invoke$lambda$1$lambda$0 = TonControllerImpl$importWallet$1.invoke$lambda$1$lambda$0(TonControllerImpl.this, guid, words, obj);
                return invoke$lambda$1$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource invoke$lambda$1$lambda$0(TonControllerImpl this$0, String guid, List words, Object keyResult) {
        Result.Error tonApiErrorResult;
        Observable processInputKey;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(guid, "$guid");
        Intrinsics.checkNotNullParameter(words, "$words");
        Intrinsics.checkNotNullParameter(keyResult, "keyResult");
        if (keyResult instanceof TonApi.Key) {
            processInputKey = this$0.processInputKey((TonApi.Key) keyResult, guid, new byte[0], words);
            schedulersProvider = this$0.schedulersProvider;
            return processInputKey.subscribeOn(schedulersProvider.mo707io());
        }
        tonApiErrorResult = this$0.getTonApiErrorResult(keyResult);
        Observable just = Observable.just(tonApiErrorResult);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
