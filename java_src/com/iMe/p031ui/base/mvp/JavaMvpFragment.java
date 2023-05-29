package com.iMe.p031ui.base.mvp;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
/* compiled from: JavaMvpFragment.kt */
/* renamed from: com.iMe.ui.base.mvp.JavaMvpFragment */
/* loaded from: classes.dex */
public class JavaMvpFragment extends MvpFragment {
    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public JavaMvpFragment() {
    }

    public JavaMvpFragment(Bundle bundle) {
        this();
        this.arguments = bundle;
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
