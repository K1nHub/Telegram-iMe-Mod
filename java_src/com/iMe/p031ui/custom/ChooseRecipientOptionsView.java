package com.iMe.p031ui.custom;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentWalletChooseRecipientOptionsBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ChooseRecipientOptionsView.kt */
/* renamed from: com.iMe.ui.custom.ChooseRecipientOptionsView */
/* loaded from: classes3.dex */
public final class ChooseRecipientOptionsView extends FrameLayout implements KoinComponent {
    private final Lazy backgroundColor$delegate;
    private final Lazy backgroundPressedColor$delegate;
    private final ForkContentWalletChooseRecipientOptionsBinding binding;
    private final Lazy cornerSize$delegate;
    private final Lazy iconPadding$delegate;
    private final Lazy iconSize$delegate;
    private final Lazy resourceManager$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ChooseRecipientOptionsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ChooseRecipientOptionsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseRecipientOptionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$special$$inlined$inject$default$1
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
        ForkContentWalletChooseRecipientOptionsBinding inflate = ForkContentWalletChooseRecipientOptionsBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$iconSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m72dp(16));
            }
        });
        this.iconSize$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$iconPadding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ChooseRecipientOptionsView.this.getResources().getDimensionPixelOffset(C3419R.dimen.margin_half_small));
            }
        });
        this.iconPadding$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$cornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ChooseRecipientOptionsView.this.getResources().getDimensionPixelOffset(C3419R.dimen.new_label_corner_radius));
            }
        });
        this.cornerSize$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$backgroundColor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                int colorWithDefaultAlpha;
                colorWithDefaultAlpha = ChooseRecipientOptionsView.this.getColorWithDefaultAlpha(Theme.key_chats_actionBackground);
                return Integer.valueOf(colorWithDefaultAlpha);
            }
        });
        this.backgroundColor$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$backgroundPressedColor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                int colorWithDefaultAlpha;
                colorWithDefaultAlpha = ChooseRecipientOptionsView.this.getColorWithDefaultAlpha(Theme.key_chats_actionPressedBackground);
                return Integer.valueOf(colorWithDefaultAlpha);
            }
        });
        this.backgroundPressedColor$delegate = lazy6;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final int getIconSize() {
        return ((Number) this.iconSize$delegate.getValue()).intValue();
    }

    private final int getIconPadding() {
        return ((Number) this.iconPadding$delegate.getValue()).intValue();
    }

    private final int getCornerSize() {
        return ((Number) this.cornerSize$delegate.getValue()).intValue();
    }

    private final int getBackgroundColor() {
        return ((Number) this.backgroundColor$delegate.getValue()).intValue();
    }

    private final int getBackgroundPressedColor() {
        return ((Number) this.backgroundPressedColor$delegate.getValue()).intValue();
    }

    public final void setupListeners(final Callbacks$Callback onContactsClickAction, final Callbacks$Callback onTwitterClickAction, final Callbacks$Callback onQRClickAction) {
        Intrinsics.checkNotNullParameter(onContactsClickAction, "onContactsClickAction");
        Intrinsics.checkNotNullParameter(onTwitterClickAction, "onTwitterClickAction");
        Intrinsics.checkNotNullParameter(onQRClickAction, "onQRClickAction");
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        FrameLayout frameContacts = forkContentWalletChooseRecipientOptionsBinding.frameContacts;
        Intrinsics.checkNotNullExpressionValue(frameContacts, "frameContacts");
        ViewExtKt.setMixedClickListener(frameContacts, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChooseRecipientOptionsView.setupListeners$lambda$3$lambda$0(Callbacks$Callback.this, (View) obj);
            }
        });
        FrameLayout frameTwitter = forkContentWalletChooseRecipientOptionsBinding.frameTwitter;
        Intrinsics.checkNotNullExpressionValue(frameTwitter, "frameTwitter");
        ViewExtKt.setMixedClickListener(frameTwitter, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChooseRecipientOptionsView.setupListeners$lambda$3$lambda$1(Callbacks$Callback.this, (View) obj);
            }
        });
        FrameLayout frameQr = forkContentWalletChooseRecipientOptionsBinding.frameQr;
        Intrinsics.checkNotNullExpressionValue(frameQr, "frameQr");
        ViewExtKt.setMixedClickListener(frameQr, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChooseRecipientOptionsView.setupListeners$lambda$3$lambda$2(Callbacks$Callback.this, (View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3$lambda$0(Callbacks$Callback onContactsClickAction, View view) {
        Intrinsics.checkNotNullParameter(onContactsClickAction, "$onContactsClickAction");
        onContactsClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3$lambda$1(Callbacks$Callback onTwitterClickAction, View view) {
        Intrinsics.checkNotNullParameter(onTwitterClickAction, "$onTwitterClickAction");
        onTwitterClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3$lambda$2(Callbacks$Callback onQRClickAction, View view) {
        Intrinsics.checkNotNullParameter(onQRClickAction, "$onQRClickAction");
        onQRClickAction.invoke();
    }

    public final void setupColors() {
        List<FrameLayout> listOf;
        List<TextView> listOf2;
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        int i = Theme.key_windowBackgroundWhiteBlueHeader;
        TextView textContacts = forkContentWalletChooseRecipientOptionsBinding.textContacts;
        Intrinsics.checkNotNullExpressionValue(textContacts, "textContacts");
        TextView textTwitter = forkContentWalletChooseRecipientOptionsBinding.textTwitter;
        Intrinsics.checkNotNullExpressionValue(textTwitter, "textTwitter");
        TextView textQr = forkContentWalletChooseRecipientOptionsBinding.textQr;
        Intrinsics.checkNotNullExpressionValue(textQr, "textQr");
        ViewExtKt.setTextsColor(i, textContacts, textTwitter, textQr);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FrameLayout[]{forkContentWalletChooseRecipientOptionsBinding.frameContacts, forkContentWalletChooseRecipientOptionsBinding.frameTwitter, forkContentWalletChooseRecipientOptionsBinding.frameQr});
        for (FrameLayout frameLayout : listOf) {
            frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerSize(), getBackgroundColor(), getBackgroundPressedColor()));
        }
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentWalletChooseRecipientOptionsBinding.textContacts, forkContentWalletChooseRecipientOptionsBinding.textTwitter, forkContentWalletChooseRecipientOptionsBinding.textQr});
        for (TextView setupColors$lambda$6$lambda$5 : listOf2) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$5, "setupColors$lambda$6$lambda$5");
            ViewExtKt.setCompoundDrawablesColor(setupColors$lambda$6$lambda$5, Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
    }

    private final void setupView() {
        setupViews();
        setupColors();
        addView(this.binding.getRoot());
    }

    private final void setupViews() {
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        TextView setupViews$lambda$10$lambda$7 = forkContentWalletChooseRecipientOptionsBinding.textContacts;
        setupViews$lambda$10$lambda$7.setText(LocaleController.getString("Contacts", C3419R.string.Contacts));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$10$lambda$7, "setupViews$lambda$10$lambda$7");
        setSizedStartIcon(setupViews$lambda$10$lambda$7, C3419R.C3421drawable.fork_drawer_social_telegram);
        TextView setupViews$lambda$10$lambda$8 = forkContentWalletChooseRecipientOptionsBinding.textTwitter;
        setupViews$lambda$10$lambda$8.setText(getResourceManager().getString(C3419R.string.drawer_social_network_twitter));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$10$lambda$8, "setupViews$lambda$10$lambda$8");
        setSizedStartIcon(setupViews$lambda$10$lambda$8, C3419R.C3421drawable.fork_drawer_social_twitter);
        TextView setupViews$lambda$10$lambda$9 = forkContentWalletChooseRecipientOptionsBinding.textQr;
        setupViews$lambda$10$lambda$9.setText(getResourceManager().getString(C3419R.string.wallet_backup_secret_words_qr_title));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$10$lambda$9, "setupViews$lambda$10$lambda$9");
        setSizedStartIcon(setupViews$lambda$10$lambda$9, C3419R.C3421drawable.msg_qrcode);
    }

    private final void setSizedStartIcon(TextView textView, int i) {
        Drawable drawable = ContextCompat.getDrawable(textView.getContext(), i);
        if (drawable != null) {
            drawable.setBounds(0, 0, getIconSize(), getIconSize());
        } else {
            drawable = null;
        }
        textView.setCompoundDrawables(drawable, null, null, null);
        textView.setCompoundDrawablePadding(getIconPadding());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getColorWithDefaultAlpha(int i) {
        return ViewExtKt.withAlpha(Theme.getColor(i), 0.25f);
    }

    /* compiled from: ChooseRecipientOptionsView.kt */
    /* renamed from: com.iMe.ui.custom.ChooseRecipientOptionsView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
