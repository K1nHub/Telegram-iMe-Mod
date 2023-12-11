package com.iMe.p030ui.custom;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
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
    public ChooseRecipientOptionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
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
                return Integer.valueOf(AndroidUtilities.m104dp(16));
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
                return Integer.valueOf(ChooseRecipientOptionsView.this.getResources().getDimensionPixelOffset(C3632R.dimen.margin_half_small));
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
                return Integer.valueOf(ChooseRecipientOptionsView.this.getResources().getDimensionPixelOffset(C3632R.dimen.new_label_corner_radius));
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

    public final void setupListeners(final Callbacks$Callback onPasteClickAction, final Callbacks$Callback onContactsClickAction, final Callbacks$Callback onQRClickAction) {
        Intrinsics.checkNotNullParameter(onPasteClickAction, "onPasteClickAction");
        Intrinsics.checkNotNullParameter(onContactsClickAction, "onContactsClickAction");
        Intrinsics.checkNotNullParameter(onQRClickAction, "onQRClickAction");
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        FrameLayout framePaste = forkContentWalletChooseRecipientOptionsBinding.framePaste;
        Intrinsics.checkNotNullExpressionValue(framePaste, "framePaste");
        ViewExtKt.safeThrottledClick$default(framePaste, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$setupListeners$1$1
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
        FrameLayout frameContacts = forkContentWalletChooseRecipientOptionsBinding.frameContacts;
        Intrinsics.checkNotNullExpressionValue(frameContacts, "frameContacts");
        ViewExtKt.safeThrottledClick$default(frameContacts, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$setupListeners$1$2
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
        FrameLayout frameQr = forkContentWalletChooseRecipientOptionsBinding.frameQr;
        Intrinsics.checkNotNullExpressionValue(frameQr, "frameQr");
        ViewExtKt.safeThrottledClick$default(frameQr, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.ChooseRecipientOptionsView$setupListeners$1$3
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
        List<FrameLayout> listOf;
        List<TextView> listOf2;
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        int i = Theme.key_windowBackgroundWhiteBlueHeader;
        TextView textContacts = forkContentWalletChooseRecipientOptionsBinding.textContacts;
        Intrinsics.checkNotNullExpressionValue(textContacts, "textContacts");
        TextView textPaste = forkContentWalletChooseRecipientOptionsBinding.textPaste;
        Intrinsics.checkNotNullExpressionValue(textPaste, "textPaste");
        TextView textQr = forkContentWalletChooseRecipientOptionsBinding.textQr;
        Intrinsics.checkNotNullExpressionValue(textQr, "textQr");
        ViewExtKt.setTextsColorKey(i, textContacts, textPaste, textQr);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FrameLayout[]{forkContentWalletChooseRecipientOptionsBinding.frameContacts, forkContentWalletChooseRecipientOptionsBinding.framePaste, forkContentWalletChooseRecipientOptionsBinding.frameQr});
        for (FrameLayout frameLayout : listOf) {
            frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerSize(), getBackgroundColor(), getBackgroundPressedColor()));
        }
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentWalletChooseRecipientOptionsBinding.textContacts, forkContentWalletChooseRecipientOptionsBinding.textPaste, forkContentWalletChooseRecipientOptionsBinding.textQr});
        for (TextView setupColors$lambda$3$lambda$2 : listOf2) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$3$lambda$2, "setupColors$lambda$3$lambda$2");
            ViewExtKt.setCompoundDrawablesColor(setupColors$lambda$3$lambda$2, Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
    }

    private final void setupView() {
        setupViews();
        setupColors();
        addView(this.binding.getRoot());
    }

    private final void setupViews() {
        ForkContentWalletChooseRecipientOptionsBinding forkContentWalletChooseRecipientOptionsBinding = this.binding;
        TextView setupViews$lambda$7$lambda$4 = forkContentWalletChooseRecipientOptionsBinding.textPaste;
        setupViews$lambda$7$lambda$4.setText(LocaleController.getString("Paste", C3632R.string.Paste));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$7$lambda$4, "setupViews$lambda$7$lambda$4");
        setSizedStartIcon(setupViews$lambda$7$lambda$4, C3632R.C3634drawable.fork_ic_paste_24);
        TextView setupViews$lambda$7$lambda$5 = forkContentWalletChooseRecipientOptionsBinding.textContacts;
        setupViews$lambda$7$lambda$5.setText(LocaleController.getString("Contacts", C3632R.string.Contacts));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$7$lambda$5, "setupViews$lambda$7$lambda$5");
        setSizedStartIcon(setupViews$lambda$7$lambda$5, C3632R.C3634drawable.fork_drawer_social_telegram);
        TextView setupViews$lambda$7$lambda$6 = forkContentWalletChooseRecipientOptionsBinding.textQr;
        setupViews$lambda$7$lambda$6.setText(LocaleController.getString("QrCode", C3632R.string.QrCode));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$7$lambda$6, "setupViews$lambda$7$lambda$6");
        setSizedStartIcon(setupViews$lambda$7$lambda$6, C3632R.C3634drawable.msg_qrcode);
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
