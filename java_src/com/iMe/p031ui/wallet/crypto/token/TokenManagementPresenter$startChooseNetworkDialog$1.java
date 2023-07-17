package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.model.crypto.Network;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$startChooseNetworkDialog$1 */
/* loaded from: classes4.dex */
public final class TokenManagementPresenter$startChooseNetworkDialog$1 extends Lambda implements Function1<Network, Unit> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementPresenter$startChooseNetworkDialog$1(TokenManagementPresenter tokenManagementPresenter) {
        super(1);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Network network) {
        invoke2(network);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Network newNetwork) {
        Network network;
        Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
        this.this$0.selectedNetwork = newNetwork;
        this.this$0.resetImportScreen();
        network = this.this$0.selectedNetwork;
        ((TokenManagementView) this.this$0.getViewState()).setupNetwork(network);
    }
}
