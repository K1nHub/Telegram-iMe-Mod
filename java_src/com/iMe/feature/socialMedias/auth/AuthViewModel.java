package com.iMe.feature.socialMedias.auth;

import androidx.lifecycle.ViewModel;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.Container;
import org.orbitmvi.orbit.ContainerHost;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt;
import org.orbitmvi.orbit.viewmodel.ViewModelExtensionsKt;
/* compiled from: AuthViewModel.kt */
/* loaded from: classes3.dex */
public final class AuthViewModel extends ViewModel implements ContainerHost<AuthState, AuthSideEffects> {
    private final AuthUseCase authUseCase;
    private final Container<AuthState, AuthSideEffects> container;

    static {
        new Companion(null);
    }

    public AuthViewModel(AuthUseCase authUseCase) {
        Intrinsics.checkNotNullParameter(authUseCase, "authUseCase");
        this.authUseCase = authUseCase;
        this.container = ViewModelExtensionsKt.container$default(this, new AuthState(null, null, false, 7, null), null, null, 6, null);
    }

    @Override // org.orbitmvi.orbit.ContainerHost
    public Container<AuthState, AuthSideEffects> getContainer() {
        return this.container;
    }

    public final void onWebViewCreated(SocialAuthDomain socialAuthDomain) {
        Intrinsics.checkNotNullParameter(socialAuthDomain, "socialAuthDomain");
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onWebViewCreated$1(socialAuthDomain, this, null), 1, null);
    }

    public final void onOverrideUrl(String overrideUrl) {
        Intrinsics.checkNotNullParameter(overrideUrl, "overrideUrl");
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onOverrideUrl$1(this, overrideUrl, null), 1, null);
    }

    public final void onPageStared() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onPageStared$1(null), 1, null);
    }

    public final void onPageFinished() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onPageFinished$1(null), 1, null);
    }

    public final void onErrorReceived() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onErrorReceived$1(null), 1, null);
    }

    public final void onRefreshPageMenuClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onRefreshPageMenuClicked$1(null), 1, null);
    }

    public final void onMenuResetClicked() {
        SimpleSyntaxExtensionsKt.intent$default(this, false, new AuthViewModel$onMenuResetClicked$1(null), 1, null);
    }

    /* compiled from: AuthViewModel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
