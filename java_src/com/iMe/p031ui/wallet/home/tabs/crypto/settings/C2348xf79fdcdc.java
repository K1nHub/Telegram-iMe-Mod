package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$2 */
/* loaded from: classes4.dex */
public final class C2348xf79fdcdc extends Lambda implements Function1<String, ObservableSource<? extends Result<? extends List<? extends FoundTokenItem>>>> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2348xf79fdcdc(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<FoundTokenItem>>> invoke(String newQuery) {
        List list;
        List list2;
        Observable searchObservable;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.this$0.query = newQuery;
        this.this$0.cursor = null;
        list = this.this$0.searchResults;
        list.clear();
        list2 = this.this$0.items;
        list2.clear();
        searchObservable = this.this$0.getSearchObservable();
        return searchObservable;
    }
}