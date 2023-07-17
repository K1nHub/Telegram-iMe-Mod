package com.iMe.p031ui.base.wallet_creation;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: JavaWalletCreationBaseFragment.kt */
/* renamed from: com.iMe.ui.base.wallet_creation.JavaWalletCreationBaseFragment */
/* loaded from: classes.dex */
public class JavaWalletCreationBaseFragment extends WalletCreationBaseFragment {
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
