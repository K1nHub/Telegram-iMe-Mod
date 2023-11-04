package com.iMe.p030ui.custom.state;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: GlobalStateLayout.kt */
/* renamed from: com.iMe.ui.custom.state.GlobalStateLayout */
/* loaded from: classes3.dex */
public final class GlobalStateLayout extends StatefulLayout implements KoinComponent {
    private Function0<Unit> emptyButtonClickListener;
    private final Lazy resourceManager$delegate;
    private Function0<Unit> retryButtonClickListener;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlobalStateLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ GlobalStateLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalStateLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.retryButtonClickListener = new Function0<Unit>() { // from class: com.iMe.ui.custom.state.GlobalStateLayout$retryButtonClickListener$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.emptyButtonClickListener = new Function0<Unit>() { // from class: com.iMe.ui.custom.state.GlobalStateLayout$emptyButtonClickListener$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.state.GlobalStateLayout$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.resourceManager$delegate = lazy;
        setupStates();
    }

    public final Function0<Unit> getRetryButtonClickListener() {
        return this.retryButtonClickListener;
    }

    public final void setRetryButtonClickListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.retryButtonClickListener = function0;
    }

    public final Function0<Unit> getEmptyButtonClickListener() {
        return this.emptyButtonClickListener;
    }

    public final void setEmptyButtonClickListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.emptyButtonClickListener = function0;
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void showContent() {
        setInternalState(GlobalState.Content.INSTANCE);
    }

    public final void showProgress() {
        setInternalState(GlobalState.Progress.INSTANCE);
    }

    public static /* synthetic */ void showEmpty$default(GlobalStateLayout globalStateLayout, GlobalState.Empty empty, int i, Object obj) {
        if ((i & 1) != 0) {
            empty = GlobalState.Empty.Common.INSTANCE;
        }
        globalStateLayout.showEmpty(empty);
    }

    public final void showEmpty(GlobalState.Empty emptyState) {
        Intrinsics.checkNotNullParameter(emptyState, "emptyState");
        setInternalState(emptyState);
    }

    public final void showNoInternetError() {
        setInternalState(GlobalState.NoInternet.INSTANCE);
    }

    public final void showUnexpectedError() {
        setInternalState(GlobalState.Unexpected.INSTANCE);
    }

    public final void setInternalState(GlobalState newState) {
        Intrinsics.checkNotNullParameter(newState, "newState");
        stopAnimation(getState());
        setState(newState.getState());
        View stateView = getStateView(getState());
        if (stateView != null) {
            setupColors(stateView);
        }
        startAnimation(getState());
    }

    public final boolean isContentState() {
        return Intrinsics.areEqual(getState(), GlobalState.Content.INSTANCE.getState());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        stopAnimation(getState());
        super.onDetachedFromWindow();
    }

    private final void setupStates() {
        GlobalState.NoInternet noInternet = GlobalState.NoInternet.INSTANCE;
        setStateView(noInternet.getState(), getStateView(noInternet));
        GlobalState.Unexpected unexpected = GlobalState.Unexpected.INSTANCE;
        setStateView(unexpected.getState(), getStateView(unexpected));
        GlobalState.Empty.TokenSearchResult tokenSearchResult = GlobalState.Empty.TokenSearchResult.INSTANCE;
        setStateView(tokenSearchResult.getState(), getStateView(tokenSearchResult));
        GlobalState.Empty.CustomTokens customTokens = GlobalState.Empty.CustomTokens.INSTANCE;
        setStateView(customTokens.getState(), getStateView(customTokens));
        GlobalState.Empty.Common common = GlobalState.Empty.Common.INSTANCE;
        setStateView(common.getState(), hideActionButton(getStateView(common)));
        GlobalState.Empty.Balance balance = GlobalState.Empty.Balance.INSTANCE;
        setStateView(balance.getState(), hideActionButton(getStateView(balance)));
        GlobalState.Empty.Staking staking = GlobalState.Empty.Staking.INSTANCE;
        setStateView(staking.getState(), hideActionButton(getStateView(staking)));
        GlobalState.Empty.Twitter twitter = GlobalState.Empty.Twitter.INSTANCE;
        setStateView(twitter.getState(), hideActionButton(getStateView(twitter)));
        GlobalState.Empty.TwitterSearch twitterSearch = GlobalState.Empty.TwitterSearch.INSTANCE;
        setStateView(twitterSearch.getState(), hideActionButton(getStateView(twitterSearch)));
        GlobalState.Empty.TokenSearchStart tokenSearchStart = GlobalState.Empty.TokenSearchStart.INSTANCE;
        setStateView(tokenSearchStart.getState(), hideActionButton(getStateView(tokenSearchStart)));
        GlobalState.Empty.NetworksSearchResult networksSearchResult = GlobalState.Empty.NetworksSearchResult.INSTANCE;
        setStateView(networksSearchResult.getState(), hideActionButton(getStateView(networksSearchResult)));
        GlobalState.Progress progress = GlobalState.Progress.INSTANCE;
        setStateView(progress.getState(), configureProgressState(hideActionButton(getStateView(progress))));
    }

    private final View configureProgressState(View view) {
        RLottieImageView rLottieImageView = (RLottieImageView) view.findViewById(C3634R.C3637id.image_state_animation);
        int i = Theme.key_chats_actionBackground;
        rLottieImageView.setLayerColor("Shape Layer 1", ViewExtKt.withAlpha(Theme.getColor(i), 55));
        rLottieImageView.setLayerColor("Shape Layer 2", Theme.getColor(i));
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(C3634R.C3637id.text_state_title);
        if (appCompatTextView != null) {
            Intrinsics.checkNotNullExpressionValue(appCompatTextView, "findViewById<AppCompatTe…w>(R.id.text_state_title)");
            ViewExtKt.gone$default(appCompatTextView, false, 1, null);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(C3634R.C3637id.text_state_description);
        if (appCompatTextView2 != null) {
            Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "findViewById<AppCompatTe…d.text_state_description)");
            ViewExtKt.gone$default(appCompatTextView2, false, 1, null);
        }
        return view;
    }

    private final View getStateView(final GlobalState globalState) {
        View inflate = LayoutInflater.from(getContext()).inflate(C3634R.layout.fork_content_global_state_layout, (ViewGroup) null);
        RLottieImageView rLottieImageView = (RLottieImageView) inflate.findViewById(C3634R.C3637id.image_state_animation);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(globalState.getIcon(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        AppCompatTextView appCompatTextView = (AppCompatTextView) inflate.findViewById(C3634R.C3637id.text_state_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(getResourceManager().getString(globalState.getTitle()));
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) inflate.findViewById(C3634R.C3637id.text_state_description);
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(getResourceManager().getString(globalState.getDescription()));
        }
        AppCompatButton getStateView$lambda$5$lambda$4 = (AppCompatButton) inflate.findViewById(C3634R.C3637id.button_retry);
        getStateView$lambda$5$lambda$4.setText(getResourceManager().getString(Intrinsics.areEqual(globalState, GlobalState.Empty.TokenSearchResult.INSTANCE) ? true : Intrinsics.areEqual(globalState, GlobalState.Empty.CustomTokens.INSTANCE) ? C3634R.string.token_search_empty_result_add_token : C3634R.string.common_retry));
        Intrinsics.checkNotNullExpressionValue(getStateView$lambda$5$lambda$4, "getStateView$lambda$5$lambda$4");
        ViewExtKt.safeThrottledClick$default(getStateView$lambda$5$lambda$4, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.state.GlobalStateLayout$getStateView$1$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                GlobalState globalState2 = GlobalState.this;
                if (Intrinsics.areEqual(globalState2, GlobalState.Empty.TokenSearchResult.INSTANCE) ? true : Intrinsics.areEqual(globalState2, GlobalState.Empty.CustomTokens.INSTANCE)) {
                    this.getEmptyButtonClickListener().invoke();
                    return;
                }
                if (Intrinsics.areEqual(globalState2, GlobalState.NoInternet.INSTANCE) ? true : Intrinsics.areEqual(globalState2, GlobalState.Unexpected.INSTANCE)) {
                    this.getRetryButtonClickListener().invoke();
                }
            }
        }, 1, null);
        Intrinsics.checkNotNullExpressionValue(inflate, "this");
        setupColors(inflate);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(context)\n          …olors(this)\n            }");
        return inflate;
    }

    private final void setupColors(View view) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(C3634R.C3637id.text_state_title);
        if (appCompatTextView != null) {
            Intrinsics.checkNotNullExpressionValue(appCompatTextView, "findViewById<AppCompatTe…w>(R.id.text_state_title)");
            appCompatTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            ViewExtKt.withMediumTypeface(appCompatTextView);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(C3634R.C3637id.text_state_description);
        if (appCompatTextView2 != null) {
            Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "findViewById<AppCompatTe…d.text_state_description)");
            appCompatTextView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray2));
        }
        AppCompatButton appCompatButton = (AppCompatButton) view.findViewById(C3634R.C3637id.button_retry);
        if (appCompatButton != null) {
            Intrinsics.checkNotNullExpressionValue(appCompatButton, "findViewById<AppCompatButton>(R.id.button_retry)");
            ViewExtKt.setRippleBackground$default(appCompatButton, false, 1, null);
            appCompatButton.setTextColor(Theme.getColor(Theme.key_chats_actionBackground));
        }
    }

    private final void startAnimation(String str) {
        View stateView;
        RLottieImageView rLottieImageView;
        if (Intrinsics.areEqual(str, GlobalState.Content.INSTANCE.getState()) || (stateView = getStateView(str)) == null || (rLottieImageView = (RLottieImageView) stateView.findViewById(C3634R.C3637id.image_state_animation)) == null) {
            return;
        }
        rLottieImageView.playAnimation();
    }

    private final void stopAnimation(String str) {
        View stateView;
        RLottieImageView rLottieImageView;
        if (Intrinsics.areEqual(str, GlobalState.Content.INSTANCE.getState()) || (stateView = getStateView(str)) == null || (rLottieImageView = (RLottieImageView) stateView.findViewById(C3634R.C3637id.image_state_animation)) == null) {
            return;
        }
        rLottieImageView.stopAnimation();
    }

    private final View hideActionButton(View view) {
        AppCompatButton appCompatButton = (AppCompatButton) view.findViewById(C3634R.C3637id.button_retry);
        if (appCompatButton != null) {
            ViewExtKt.gone$default(appCompatButton, false, 1, null);
        }
        return view;
    }

    /* compiled from: GlobalStateLayout.kt */
    /* renamed from: com.iMe.ui.custom.state.GlobalStateLayout$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
