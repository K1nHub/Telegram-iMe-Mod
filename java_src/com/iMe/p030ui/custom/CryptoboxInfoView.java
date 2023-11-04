package com.iMe.p030ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.cryptobox.CryptoBoxCreationRulesItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
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
import org.telegram.messenger.databinding.ForkContentCryptoboxInfoBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoboxInfoView.kt */
/* renamed from: com.iMe.ui.custom.CryptoboxInfoView */
/* loaded from: classes3.dex */
public final class CryptoboxInfoView extends FrameLayout implements KoinComponent {
    private final ForkContentCryptoboxInfoBinding binding;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CryptoboxInfoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ CryptoboxInfoView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoboxInfoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.CryptoboxInfoView$special$$inlined$inject$default$1
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
        ForkContentCryptoboxInfoBinding inflate = ForkContentCryptoboxInfoBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setupViewData(CryptoBoxCreationRulesItem item, boolean z) {
        Intrinsics.checkNotNullParameter(item, "item");
        ForkContentCryptoboxInfoBinding forkContentCryptoboxInfoBinding = this.binding;
        forkContentCryptoboxInfoBinding.textCreationFeeValue.setText(item.getCreationFeeText());
        forkContentCryptoboxInfoBinding.textTotalUsersFeeValue.setText(item.getTotalUsersFeeText());
        forkContentCryptoboxInfoBinding.textTotalFeeValue.setText(item.getTotalFeeText());
        forkContentCryptoboxInfoBinding.imageInfo.setClickable(z);
    }

    public final void setInfoButtonClickAction(final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        AppCompatImageView appCompatImageView = this.binding.imageInfo;
        Intrinsics.checkNotNullExpressionValue(appCompatImageView, "binding.imageInfo");
        ViewExtKt.safeThrottledClick$default(appCompatImageView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.CryptoboxInfoView$setInfoButtonClickAction$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                Callbacks$Callback.this.invoke();
            }
        }, 1, null);
    }

    public final void setupColors() {
        List<AppCompatTextView> listOf;
        ForkContentCryptoboxInfoBinding forkContentCryptoboxInfoBinding = this.binding;
        AppCompatTextView setupColors$lambda$4$lambda$2 = forkContentCryptoboxInfoBinding.textTitle;
        setupColors$lambda$4$lambda$2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$2, "setupColors$lambda$4$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$2);
        AppCompatImageView imageInfo = forkContentCryptoboxInfoBinding.imageInfo;
        Intrinsics.checkNotNullExpressionValue(imageInfo, "imageInfo");
        ImageViewExtKt.setImageColor(imageInfo, Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{forkContentCryptoboxInfoBinding.textTotalFeeTitle, forkContentCryptoboxInfoBinding.textTotalFeeValue});
        for (AppCompatTextView setupColors$lambda$4$lambda$3 : listOf) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
            ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
        }
        int i = Theme.key_windowBackgroundWhiteGrayText4;
        AppCompatTextView textCreationFeeTitle = forkContentCryptoboxInfoBinding.textCreationFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textCreationFeeTitle, "textCreationFeeTitle");
        AppCompatTextView textTotalUsersFeeTitle = forkContentCryptoboxInfoBinding.textTotalUsersFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textTotalUsersFeeTitle, "textTotalUsersFeeTitle");
        AppCompatTextView textTotalFeeTitle = forkContentCryptoboxInfoBinding.textTotalFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textTotalFeeTitle, "textTotalFeeTitle");
        ViewExtKt.setTextsColorKey(i, textCreationFeeTitle, textTotalUsersFeeTitle, textTotalFeeTitle);
        int i2 = Theme.key_chat_messagePanelText;
        AppCompatTextView textCreationFeeValue = forkContentCryptoboxInfoBinding.textCreationFeeValue;
        Intrinsics.checkNotNullExpressionValue(textCreationFeeValue, "textCreationFeeValue");
        AppCompatTextView textTotalUsersFeeValue = forkContentCryptoboxInfoBinding.textTotalUsersFeeValue;
        Intrinsics.checkNotNullExpressionValue(textTotalUsersFeeValue, "textTotalUsersFeeValue");
        AppCompatTextView textTotalFeeValue = forkContentCryptoboxInfoBinding.textTotalFeeValue;
        Intrinsics.checkNotNullExpressionValue(textTotalFeeValue, "textTotalFeeValue");
        ViewExtKt.setTextsColorKey(i2, textCreationFeeValue, textTotalUsersFeeValue, textTotalFeeValue);
    }

    private final void setupView() {
        setupColors();
        setupTexts();
        addView(this.binding.getRoot());
    }

    private final void setupTexts() {
        ForkContentCryptoboxInfoBinding forkContentCryptoboxInfoBinding = this.binding;
        forkContentCryptoboxInfoBinding.textTitle.setText(getResourceManager().getString(C3634R.string.cryptobox_create_cryptobox_information_title));
        forkContentCryptoboxInfoBinding.textCreationFeeTitle.setText(getResourceManager().getString(C3634R.string.cryptobox_create_cryptobox_information_creation_fee));
        forkContentCryptoboxInfoBinding.textTotalUsersFeeTitle.setText(getResourceManager().getString(C3634R.string.cryptobox_create_cryptobox_information_total_users_fee));
        forkContentCryptoboxInfoBinding.textTotalFeeTitle.setText(getResourceManager().getString(C3634R.string.cryptobox_create_cryptobox_information_total_fee));
    }
}
