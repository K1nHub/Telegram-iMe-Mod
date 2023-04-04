package com.iMe.manager.wallet;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletLinkClickableView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface WalletLinkClickableView extends MvpView {
    void actionCopyToClipboard(String str);

    void actionMakeTransfer(TokenCode tokenCode, String str, boolean z, String str2, NetworkType networkType);

    void actionOpenProfileScreen(long j);

    @AddToEndSingle
    void setupMessageClickableLink(String str, String str2, Function0<Unit> function0);

    void showClickableTextDialog(String[] strArr, Function1<? super Integer, Unit> function1);
}
