package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$subscribeToQueryChanges$1 */
/* loaded from: classes3.dex */
public final class CreateWalletPresenter$subscribeToQueryChanges$1 extends Lambda implements Function1<String, ObservableSource<? extends List<? extends String>>> {
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletPresenter$subscribeToQueryChanges$1(CreateWalletPresenter createWalletPresenter) {
        super(1);
        this.this$0 = createWalletPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends List<String>> invoke(String query) {
        CryptoWalletInteractor cryptoWalletInteractor;
        Intrinsics.checkNotNullParameter(query, "query");
        this.this$0.lastSearchQuery = query;
        cryptoWalletInteractor = this.this$0.cryptoWalletInteractor;
        return cryptoWalletInteractor.getMnemonicWordsSuggestions(query);
    }
}
