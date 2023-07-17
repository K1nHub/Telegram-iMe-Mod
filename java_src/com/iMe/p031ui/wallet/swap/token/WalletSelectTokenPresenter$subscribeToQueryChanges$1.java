package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$subscribeToQueryChanges$1 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter$subscribeToQueryChanges$1 extends Lambda implements Function1<String, ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>>> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$subscribeToQueryChanges$1(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(1);
        this.this$0 = walletSelectTokenPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<SelectableTokenItem>>> invoke(String newQuery) {
        List list;
        Observable searchObservable;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.this$0.query = newQuery;
        this.this$0.cursor = "";
        list = this.this$0.swapItems;
        list.clear();
        searchObservable = this.this$0.getSearchObservable();
        return searchObservable;
    }
}
