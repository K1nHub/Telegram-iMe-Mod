package com.smedialink.p031ui.custom.state;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.graphics.ColorUtils;
import com.smedialink.model.state.GlobalState;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: GlobalStateLayout.kt */
/* renamed from: com.smedialink.ui.custom.state.GlobalStateLayout */
/* loaded from: classes3.dex */
public final class GlobalStateLayout extends StatefulLayout implements KoinComponent {
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
        this.retryButtonClickListener = GlobalStateLayout$retryButtonClickListener$1.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new GlobalStateLayout$special$$inlined$inject$default$1(this, null, null));
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
        GlobalState.Empty.Common common = GlobalState.Empty.Common.INSTANCE;
        setStateView(common.getState(), hideActionButton(getStateView(common)));
        GlobalState.Empty.Balance balance = GlobalState.Empty.Balance.INSTANCE;
        setStateView(balance.getState(), hideActionButton(getStateView(balance)));
        GlobalState.Empty.Staking staking = GlobalState.Empty.Staking.INSTANCE;
        setStateView(staking.getState(), hideActionButton(getStateView(staking)));
        GlobalState.Progress progress = GlobalState.Progress.INSTANCE;
        setStateView(progress.getState(), configureProgressState(hideActionButton(getStateView(progress))));
    }

    private final View configureProgressState(View view) {
        RLottieImageView rLottieImageView = (RLottieImageView) view.findViewById(C3158R.C3161id.image_state_animation);
        rLottieImageView.setLayerColor("Shape Layer 1", ColorUtils.setAlphaComponent(Theme.getColor("chats_actionBackground"), 55));
        rLottieImageView.setLayerColor("Shape Layer 2", Theme.getColor("chats_actionBackground"));
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(C3158R.C3161id.text_state_title);
        if (appCompatTextView != null) {
            ViewExtKt.gone(appCompatTextView);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(C3158R.C3161id.text_state_description);
        if (appCompatTextView2 != null) {
            ViewExtKt.gone(appCompatTextView2);
        }
        return view;
    }

    private final View getStateView(GlobalState globalState) {
        View inflate = LayoutInflater.from(getContext()).inflate(C3158R.layout.fork_content_global_state_layout, (ViewGroup) null);
        RLottieImageView rLottieImageView = (RLottieImageView) inflate.findViewById(C3158R.C3161id.image_state_animation);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(globalState.getIcon(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        AppCompatTextView appCompatTextView = (AppCompatTextView) inflate.findViewById(C3158R.C3161id.text_state_title);
        appCompatTextView.setText(getResourceManager().getString(globalState.getTitle()));
        appCompatTextView.setTextColor(Theme.getColor("chat_messagePanelText"));
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) inflate.findViewById(C3158R.C3161id.text_state_description);
        appCompatTextView2.setText(getResourceManager().getString(globalState.getDescription()));
        appCompatTextView2.setTextColor(Theme.getColor("dialogTextGray2"));
        AppCompatButton appCompatButton = (AppCompatButton) inflate.findViewById(C3158R.C3161id.button_retry);
        appCompatButton.setText(getResourceManager().getString(C3158R.string.common_retry));
        Intrinsics.checkNotNullExpressionValue(appCompatButton, "");
        ViewExtKt.setRippleBackground$default(appCompatButton, false, 1, null);
        appCompatButton.setTextColor(Theme.getColor("chats_actionBackground"));
        ViewExtKt.safeThrottledClick$default(appCompatButton, 0L, new GlobalStateLayout$getStateView$1$4$1(this), 1, null);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(context)\n          …          }\n            }");
        return inflate;
    }

    private final void startAnimation(String str) {
        View stateView;
        RLottieImageView rLottieImageView;
        if (Intrinsics.areEqual(str, GlobalState.Content.INSTANCE.getState()) || (stateView = getStateView(str)) == null || (rLottieImageView = (RLottieImageView) stateView.findViewById(C3158R.C3161id.image_state_animation)) == null) {
            return;
        }
        rLottieImageView.playAnimation();
    }

    private final void stopAnimation(String str) {
        View stateView;
        RLottieImageView rLottieImageView;
        if (Intrinsics.areEqual(str, GlobalState.Content.INSTANCE.getState()) || (stateView = getStateView(str)) == null || (rLottieImageView = (RLottieImageView) stateView.findViewById(C3158R.C3161id.image_state_animation)) == null) {
            return;
        }
        rLottieImageView.stopAnimation();
    }

    private final View hideActionButton(View view) {
        AppCompatButton appCompatButton = (AppCompatButton) view.findViewById(C3158R.C3161id.button_retry);
        if (appCompatButton != null) {
            ViewExtKt.gone(appCompatButton);
        }
        return view;
    }

    /* compiled from: GlobalStateLayout.kt */
    /* renamed from: com.smedialink.ui.custom.state.GlobalStateLayout$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
