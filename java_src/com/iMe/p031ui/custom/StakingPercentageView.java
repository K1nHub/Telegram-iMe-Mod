package com.iMe.p031ui.custom;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingCompoundBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: StakingPercentageView.kt */
/* renamed from: com.iMe.ui.custom.StakingPercentageView */
/* loaded from: classes4.dex */
public final class StakingPercentageView extends FrameLayout implements KoinComponent {
    private ValueAnimator animator;
    private final ForkContentStakingCompoundBinding binding;
    private boolean isThresholdReached;
    private float progress;
    private final BehaviorSubject<Float> progressSubject;
    private final Lazy schedulersProvider$delegate;
    private final CompositeDisposable subscriptions;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingPercentageView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingPercentageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingPercentageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<SchedulersProvider>() { // from class: com.iMe.ui.custom.StakingPercentageView$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.SchedulersProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SchedulersProvider invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), qualifier, function0);
            }
        });
        this.schedulersProvider$delegate = lazy;
        ForkContentStakingCompoundBinding inflate = ForkContentStakingCompoundBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        BehaviorSubject<Float> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create<Float>()");
        this.progressSubject = create;
        this.subscriptions = new CompositeDisposable();
        setupView();
    }

    private final SchedulersProvider getSchedulersProvider() {
        return (SchedulersProvider) this.schedulersProvider$delegate.getValue();
    }

    public final void setupViewData(StakingAnnualPercentageData stakingAnnualPercentageData, final Callbacks$Callback onInfoClickAction) {
        Intrinsics.checkNotNullParameter(onInfoClickAction, "onInfoClickAction");
        ForkContentStakingCompoundBinding forkContentStakingCompoundBinding = this.binding;
        AppCompatImageView imageInfo = forkContentStakingCompoundBinding.imageInfo;
        Intrinsics.checkNotNullExpressionValue(imageInfo, "imageInfo");
        ViewExtKt.setMixedClickListener(imageInfo, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.StakingPercentageView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingPercentageView.setupViewData$lambda$1$lambda$0(Callbacks$Callback.this, (View) obj);
            }
        });
        if (stakingAnnualPercentageData == null) {
            return;
        }
        AppCompatTextView appCompatTextView = forkContentStakingCompoundBinding.textApr;
        appCompatTextView.setText(LocaleController.getInternalString(C3473R.string.staking_programme_apr) + getAnnualPercentageText(stakingAnnualPercentageData.getApr()));
        AppCompatTextView appCompatTextView2 = forkContentStakingCompoundBinding.textApy;
        appCompatTextView2.setText(LocaleController.getInternalString(C3473R.string.staking_programme_apy) + getAnnualPercentageText(stakingAnnualPercentageData.getApy()));
        AppCompatTextView appCompatTextView3 = forkContentStakingCompoundBinding.textThresholdValue;
        appCompatTextView3.setText(stakingAnnualPercentageData.getCompoundThreshold() + '+');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$1$lambda$0(Callbacks$Callback onInfoClickAction, View view) {
        Intrinsics.checkNotNullParameter(onInfoClickAction, "$onInfoClickAction");
        onInfoClickAction.invoke();
    }

    public final void updateProgress(float f) {
        this.progressSubject.onNext(Float.valueOf(f));
    }

    public final void setupColors() {
        ForkContentStakingCompoundBinding forkContentStakingCompoundBinding = this.binding;
        AppCompatTextView setupColors$lambda$5$lambda$2 = forkContentStakingCompoundBinding.textApr;
        setupColors$lambda$5$lambda$2.setTextColor(Theme.getColor(this.isThresholdReached ? Theme.key_windowBackgroundWhiteGrayText : Theme.key_windowBackgroundWhiteBlueText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$2, "setupColors$lambda$5$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$5$lambda$2);
        AppCompatTextView setupColors$lambda$5$lambda$3 = forkContentStakingCompoundBinding.textApy;
        setupColors$lambda$5$lambda$3.setTextColor(Theme.getColor(this.isThresholdReached ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteGrayText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$3, "setupColors$lambda$5$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$5$lambda$3);
        AppCompatImageView setupColors$lambda$5$lambda$4 = forkContentStakingCompoundBinding.imageInfo;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$4, "setupColors$lambda$5$lambda$4");
        ImageViewExtKt.setImageColor(setupColors$lambda$5$lambda$4, Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        ViewExtKt.setBoundedCircleRippleBackground(setupColors$lambda$5$lambda$4);
        forkContentStakingCompoundBinding.viewProgress.setupColors();
        int i = Theme.key_windowBackgroundWhiteGrayText;
        AppCompatTextView textStartValue = forkContentStakingCompoundBinding.textStartValue;
        Intrinsics.checkNotNullExpressionValue(textStartValue, "textStartValue");
        AppCompatTextView textThresholdValue = forkContentStakingCompoundBinding.textThresholdValue;
        Intrinsics.checkNotNullExpressionValue(textThresholdValue, "textThresholdValue");
        ViewExtKt.setTextsColor(i, textStartValue, textThresholdValue);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.subscriptions.clear();
        setupProgressListener();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.animator = null;
        this.subscriptions.clear();
        super.onDetachedFromWindow();
    }

    private final void setupView() {
        setupColors();
        setupProgressListener();
        setupTexts();
        addView(this.binding.getRoot());
    }

    private final void setupProgressListener() {
        Observable<Float> observeOn = this.progressSubject.debounce(200L, TimeUnit.MILLISECONDS).subscribeOn(getSchedulersProvider().mo717io()).observeOn(getSchedulersProvider().mo716ui());
        final StakingPercentageView$setupProgressListener$1 stakingPercentageView$setupProgressListener$1 = new StakingPercentageView$setupProgressListener$1(this);
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.iMe.ui.custom.StakingPercentageView$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                StakingPercentageView.setupProgressListener$lambda$6(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun setupProgres…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupProgressListener$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void setupTexts() {
        this.binding.textStartValue.setText(SessionDescription.SUPPORTED_SDP_VERSION);
    }

    private final String getAnnualPercentageText(String str) {
        return str + " %";
    }
}
