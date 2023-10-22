package com.iMe.feature.socialMedias.webScreen;

import androidx.lifecycle.ViewModel;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.utils.base.ErrorHandler;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.ContainerHost;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
import org.orbitmvi.orbit.viewmodel.ViewModelExtensionsKt;
/* compiled from: SocialWebViewModel.kt */
/* loaded from: classes3.dex */
public final class SocialWebViewModel extends ViewModel implements ContainerHost<SocialWebState, SocialSideEffects> {
    private final Container<SocialWebState, SocialSideEffects> container;
    private final SocialUseCase socialUseCase;

    static {
        new Companion(null);
    }

    public SocialWebViewModel(SocialUseCase socialUseCase) {
        Intrinsics.checkNotNullParameter(socialUseCase, "socialUseCase");
        this.socialUseCase = socialUseCase;
        this.container = ViewModelExtensionsKt.container$default(this, new SocialWebState(null, null, false, 7, null), ErrorHandler.INSTANCE.settings(), null, 4, null);
    }

    @Override // org.orbitmvi.orbit.ContainerHost
    public Container<SocialWebState, SocialSideEffects> getContainer() {
        return this.container;
    }

    public final void onWebViewCreated(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$onWebViewCreated$1(socialNetwork, this, null), 1, null);
    }

    public final void onMenuResetClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$onMenuResetClicked$1(null), 1, null);
    }

    public final void onMenuOpenInClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$onMenuOpenInClicked$1(null), 1, null);
    }

    public final void onResetClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$onResetClicked$1(this, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processUrl(String str) {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$processUrl$1(str, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetCookiesAndFinish() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$resetCookiesAndFinish$1(null), 1, null);
    }

    public final void onMenuClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new SocialWebViewModel$onMenuClicked$1(null), 1, null);
    }

    /* compiled from: SocialWebViewModel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
