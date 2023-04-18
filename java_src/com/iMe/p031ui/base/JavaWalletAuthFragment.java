package com.iMe.p031ui.base;

import android.content.Context;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: JavaWalletAuthFragment.kt */
/* renamed from: com.iMe.ui.base.JavaWalletAuthFragment */
/* loaded from: classes3.dex */
public class JavaWalletAuthFragment extends WalletAuthFragment {
    @Override // com.iMe.p031ui.base.WalletAuthFragment, com.iMe.p031ui.base.mvp.MvpFragment
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
