package com.iMe.p031ui.base.wallet_auth;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: JavaWalletAuthBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_auth.JavaWalletAuthBaseFragment */
/* loaded from: classes4.dex */
public class JavaWalletAuthBaseFragment extends WalletAuthBaseFragment {
    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinJavaComponent.getKoin();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new View(getParentActivity());
    }
}
