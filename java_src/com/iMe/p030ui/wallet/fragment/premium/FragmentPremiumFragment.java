package com.iMe.p030ui.wallet.fragment.premium;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.fragment.premium.adapter.TonFragmentPremiumRecycleAdapter;
import com.iMe.p030ui.wallet.fragment.premium.adapter.diff.TonFragmentPremiumDiffCallback;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.databinding.ForkFragmentFragmentPremiumBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LoadingSpan;
import org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.p043ui.Components.Premium.PremiumButtonView;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.StarParticlesView;
import org.telegram.p043ui.ContactsActivity;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: FragmentPremiumFragment.kt */
/* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment */
/* loaded from: classes3.dex */
public final class FragmentPremiumFragment extends WalletAuthBaseFragment implements FragmentPremiumView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(FragmentPremiumFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(FragmentPremiumFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;", 0)), Reflection.property1(new PropertyReference1Impl(FragmentPremiumFragment.class, "actionButton", "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;", 0)), Reflection.property1(new PropertyReference1Impl(FragmentPremiumFragment.class, "starParticlesView", "getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;", 0)), Reflection.property1(new PropertyReference1Impl(FragmentPremiumFragment.class, "starTextureView", "getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy actionButton$delegate;
    private final Lazy actionButtonContainerCornerRadius$delegate;
    private final ResettableLazy binding$delegate;
    private final Lazy gradientCanvas$delegate;
    private final Lazy gradientTextureBitmap$delegate;
    private final PremiumGradient.PremiumGradientTools gradientTools;
    private final Lazy loadingSpanSize$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy productsRecycleAdapter$delegate;
    private int recipientTextColorKey;
    private final Lazy recipientViewCornerRadius$delegate;
    private final ResettableLazy starParticlesView$delegate;
    private final ResettableLazy starTextureView$delegate;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public FragmentPremiumFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Function0<FragmentPremiumPresenter> function0 = new Function0<FragmentPremiumPresenter>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FragmentPremiumPresenter invoke() {
                Lazy lazy7;
                final FragmentPremiumFragment fragmentPremiumFragment = FragmentPremiumFragment.this;
                lazy7 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<FragmentPremiumPresenter>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final FragmentPremiumPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(FragmentPremiumPresenter.class), qualifier, function02);
                    }
                });
                return (FragmentPremiumPresenter) lazy7.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, FragmentPremiumPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TonFragmentPremiumRecycleAdapter>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.fragment.premium.adapter.TonFragmentPremiumRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TonFragmentPremiumRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TonFragmentPremiumRecycleAdapter.class), qualifier, function02);
            }
        });
        this.productsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentFragmentPremiumBinding>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentFragmentPremiumBinding invoke() {
                return ForkFragmentFragmentPremiumBinding.inflate(BaseFragmentExtKt.getLayoutInflater(FragmentPremiumFragment.this));
            }
        }, 1, (Object) null);
        this.actionButton$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<PremiumButtonView>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$actionButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final PremiumButtonView invoke() {
                PremiumButtonView initActionButton;
                initActionButton = FragmentPremiumFragment.this.initActionButton();
                return initActionButton;
            }
        }, 1, (Object) null);
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$actionButtonContainerCornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ViewExtKt.getDpToPx(7));
            }
        });
        this.actionButtonContainerCornerRadius$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<Bitmap>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$gradientTextureBitmap$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bitmap invoke() {
                return Bitmap.createBitmap(40, 40, Bitmap.Config.ARGB_8888);
            }
        });
        this.gradientTextureBitmap$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Canvas>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$gradientCanvas$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Canvas invoke() {
                Bitmap gradientTextureBitmap;
                gradientTextureBitmap = FragmentPremiumFragment.this.getGradientTextureBitmap();
                return new Canvas(gradientTextureBitmap);
            }
        });
        this.gradientCanvas$delegate = lazy4;
        this.gradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradientBackground1, Theme.key_premiumGradientBackground2, Theme.key_premiumGradientBackground3, Theme.key_premiumGradientBackground4);
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$loadingSpanSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ViewExtKt.getDpToPx(70));
            }
        });
        this.loadingSpanSize$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$recipientViewCornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(ViewExtKt.getDpToPx(12));
            }
        });
        this.recipientViewCornerRadius$delegate = lazy6;
        this.starParticlesView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<StarParticlesView>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$starParticlesView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final StarParticlesView invoke() {
                StarParticlesView initStarParticlesView;
                initStarParticlesView = FragmentPremiumFragment.this.initStarParticlesView();
                return initStarParticlesView;
            }
        }, 1, (Object) null);
        this.starTextureView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<GLIconTextureView>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$starTextureView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final GLIconTextureView invoke() {
                GLIconTextureView initStarTextureView;
                initStarTextureView = FragmentPremiumFragment.this.initStarTextureView();
                return initStarTextureView;
            }
        }, 1, (Object) null);
        this.recipientTextColorKey = Theme.key_windowBackgroundWhiteGrayText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentPremiumPresenter getPresenter() {
        return (FragmentPremiumPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TonFragmentPremiumRecycleAdapter getProductsRecycleAdapter() {
        return (TonFragmentPremiumRecycleAdapter) this.productsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentFragmentPremiumBinding getBinding() {
        return (ForkFragmentFragmentPremiumBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final PremiumButtonView getActionButton() {
        return (PremiumButtonView) this.actionButton$delegate.getValue(this, $$delegatedProperties[2]);
    }

    private final int getActionButtonContainerCornerRadius() {
        return ((Number) this.actionButtonContainerCornerRadius$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap getGradientTextureBitmap() {
        Object value = this.gradientTextureBitmap$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-gradientTextureBitmap>(...)");
        return (Bitmap) value;
    }

    private final Canvas getGradientCanvas() {
        return (Canvas) this.gradientCanvas$delegate.getValue();
    }

    private final int getLoadingSpanSize() {
        return ((Number) this.loadingSpanSize$delegate.getValue()).intValue();
    }

    private final int getRecipientViewCornerRadius() {
        return ((Number) this.recipientViewCornerRadius$delegate.getValue()).intValue();
    }

    private final StarParticlesView getStarParticlesView() {
        return (StarParticlesView) this.starParticlesView$delegate.getValue(this, $$delegatedProperties[3]);
    }

    private final GLIconTextureView getStarTextureView() {
        return (GLIconTextureView) this.starTextureView$delegate.getValue(this, $$delegatedProperties[4]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupViews();
        setupRecycleView();
        setupColors();
        setupListeners();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        super.onTransitionAnimationEnd(z, z2);
        getStarTextureView().startEnterAnimation(-360, 150L);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createFormattedDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                FragmentPremiumFragment.showConfirmationDialog$lambda$0(FragmentPremiumFragment.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmationDialog$lambda$0(FragmentPremiumFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().giftPremium();
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showActionSuccess() {
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3634R.string.cryptobox_create_success_title), getResourceManager().getString(C3634R.string.fragment_premium_gift_success_description), getResourceManager().getString(C3634R.string.common_ok), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                FragmentPremiumFragment.this.finishFragment();
            }
        });
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showActionError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3634R.string.common_error), message, getResourceManager().getString(C3634R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void openChooseContact(Bundle args) {
        Intrinsics.checkNotNullParameter(args, "args");
        final ContactsActivity contactsActivity = new ContactsActivity(args);
        contactsActivity.setDelegate(new ContactsActivity.ContactsActivityDelegate() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ContactsActivity.ContactsActivityDelegate
            public final void didSelectContact(TLRPC$User tLRPC$User, String str, ContactsActivity contactsActivity2) {
                FragmentPremiumFragment.openChooseContact$lambda$2$lambda$1(ContactsActivity.this, this, tLRPC$User, str, contactsActivity2);
            }
        });
        presentFragment(contactsActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openChooseContact$lambda$2$lambda$1(ContactsActivity this_apply, FragmentPremiumFragment this$0, TLRPC$User user, String str, ContactsActivity contactsActivity) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.getParentActivity() != null) {
            FragmentPremiumPresenter presenter = this$0.getPresenter();
            Intrinsics.checkNotNullExpressionValue(user, "user");
            presenter.onContactSelected(user);
        }
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getProductsRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderButton(String buttonText, boolean z) {
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        PremiumButtonView actionButton = getActionButton();
        actionButton.setOverlayText(buttonText, false, true);
        ViewExtKt.setEnabledWithAlpha(actionButton, z);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderRecipient(TLRPC$User user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.recipientTextColorKey = Theme.key_windowBackgroundWhiteBlackText;
        ForkFragmentFragmentPremiumBinding binding = getBinding();
        BackupImageView renderRecipient$lambda$6$lambda$4 = binding.imageUserAvatar;
        Intrinsics.checkNotNullExpressionValue(renderRecipient$lambda$6$lambda$4, "renderRecipient$lambda$6$lambda$4");
        ViewExtKt.visible$default(renderRecipient$lambda$6$lambda$4, false, 1, null);
        renderRecipient$lambda$6$lambda$4.setUser(user);
        TextView textView = binding.textRecipientValue;
        textView.setText(ContactsController.formatName(user));
        textView.setTextColor(getThemedColor(this.recipientTextColorKey));
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderBalance(String balanceText) {
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        getBinding().textBalance.setText(balanceText);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                FragmentPremiumFragment.getThemeDescriptions$lambda$7(FragmentPremiumFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$7(FragmentPremiumFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getProductsRecycleAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PremiumButtonView initActionButton() {
        return new PremiumButtonView(getContext(), ViewExtKt.getDpToPx(4), true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StarParticlesView initStarParticlesView() {
        final Context context = getContext();
        StarParticlesView starParticlesView = new StarParticlesView(context) { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$initStarParticlesView$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.StarParticlesView, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                this.drawable.rect2.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
            }
        };
        StarParticlesView.Drawable drawable = starParticlesView.drawable;
        drawable.useBlur = false;
        drawable.forceMaxAlpha = true;
        drawable.checkBounds = true;
        drawable.init();
        return starParticlesView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GLIconTextureView initStarTextureView() {
        final Context context = getContext();
        GLIconTextureView gLIconTextureView = new GLIconTextureView(context) { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$initStarTextureView$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                setPaused(false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.Premium.GLIcon.GLIconTextureView, android.view.View
            public void onDetachedFromWindow() {
                setPaused(true);
                super.onDetachedFromWindow();
            }
        };
        gLIconTextureView.setStarParticlesView(getStarParticlesView());
        return gLIconTextureView;
    }

    private final void setupColors() {
        List<TextView> listOf;
        updateStarTextureView();
        getStarParticlesView().drawable.updateColors();
        getStarTextureView().mRenderer.updateColors();
        ForkFragmentFragmentPremiumBinding binding = getBinding();
        FrameLayout root = binding.getRoot();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColors(new int[]{getThemedColor(Theme.key_premiumGradientBackground2), getThemedColor(Theme.key_premiumGradientBackground3)});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        root.setBackground(gradientDrawable);
        ActionBarMenuItem setupColors$lambda$15$lambda$12 = binding.buttonBack;
        setupColors$lambda$15$lambda$12.setIconColor(-1);
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$15$lambda$12, "setupColors$lambda$15$lambda$12");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$15$lambda$12);
        TextView textTitle = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(textTitle, "textTitle");
        TextView textSubtitle = binding.textSubtitle;
        Intrinsics.checkNotNullExpressionValue(textSubtitle, "textSubtitle");
        TextView textRecipientTitle = binding.textRecipientTitle;
        Intrinsics.checkNotNullExpressionValue(textRecipientTitle, "textRecipientTitle");
        TextView textDurationTitle = binding.textDurationTitle;
        Intrinsics.checkNotNullExpressionValue(textDurationTitle, "textDurationTitle");
        TextView textBalance = binding.textBalance;
        Intrinsics.checkNotNullExpressionValue(textBalance, "textBalance");
        ViewExtKt.setTextsColor(-1, textTitle, textSubtitle, textRecipientTitle, textDurationTitle, textBalance);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{binding.textTitle, binding.textRecipientTitle, binding.textDurationTitle});
        for (TextView setupColors$lambda$15$lambda$13 : listOf) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$15$lambda$13, "setupColors$lambda$15$lambda$13");
            ViewExtKt.withMediumTypeface(setupColors$lambda$15$lambda$13);
        }
        LinearLayout linearLayout = binding.viewRecipient;
        int recipientViewCornerRadius = getRecipientViewCornerRadius();
        int i = Theme.key_windowBackgroundWhite;
        linearLayout.setBackground(Theme.createRoundRectDrawable(recipientViewCornerRadius, getThemedColor(i)));
        linearLayout.setForeground(Theme.createSimpleSelectorRoundRectDrawable(getRecipientViewCornerRadius(), 0, getThemedColor(Theme.key_listSelector)));
        binding.textRecipientValue.setTextColor(getThemedColor(this.recipientTextColorKey));
        AppCompatImageView imageRecipientIcon = binding.imageRecipientIcon;
        Intrinsics.checkNotNullExpressionValue(imageRecipientIcon, "imageRecipientIcon");
        ImageViewExtKt.setImageColor(imageRecipientIcon, getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        binding.cardView.setCardBackgroundColor(getThemedColor(i));
        binding.frameButtonContainer.setBackground(Theme.createRoundRectDrawable(getActionButtonContainerCornerRadius(), 0, getThemedColor(i)));
    }

    private final void updateStarTextureView() {
        FrameLayout root = getBinding().getRoot();
        if (NumberExtKt.isZero(Integer.valueOf(root.getMeasuredWidth())) || NumberExtKt.isZero(Integer.valueOf(root.getMeasuredHeight()))) {
            return;
        }
        this.gradientTools.gradientMatrix(0, 0, root.getMeasuredWidth(), root.getMeasuredHeight(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Canvas gradientCanvas = getGradientCanvas();
        gradientCanvas.save();
        gradientCanvas.scale(100.0f / root.getMeasuredWidth(), 100.0f / root.getMeasuredHeight());
        gradientCanvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, root.getMeasuredWidth(), root.getMeasuredHeight(), this.gradientTools.paint);
        gradientCanvas.restore();
        getStarTextureView().setBackgroundBitmap(getGradientTextureBitmap());
    }

    private final void setupListeners() {
        ForkFragmentFragmentPremiumBinding binding = getBinding();
        ActionBarMenuItem buttonBack = binding.buttonBack;
        Intrinsics.checkNotNullExpressionValue(buttonBack, "buttonBack");
        ViewExtKt.safeThrottledClick$default(buttonBack, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$setupListeners$1$1
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
                FragmentPremiumFragment.this.finishFragment();
            }
        }, 1, null);
        LinearLayout viewRecipient = binding.viewRecipient;
        Intrinsics.checkNotNullExpressionValue(viewRecipient, "viewRecipient");
        ViewExtKt.safeThrottledClick$default(viewRecipient, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$setupListeners$1$2
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
                FragmentPremiumPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = FragmentPremiumFragment.this.getPresenter();
                presenter.onSelectContactClick();
            }
        }, 1, null);
        ViewExtKt.safeThrottledClick$default(getActionButton(), 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$setupListeners$1$3
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
                FragmentPremiumPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = FragmentPremiumFragment.this.getPresenter();
                presenter.onGiftClick();
            }
        }, 1, null);
        final TonFragmentPremiumRecycleAdapter productsRecycleAdapter = getProductsRecycleAdapter();
        productsRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                FragmentPremiumFragment.setupListeners$lambda$20$lambda$19(TonFragmentPremiumRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$20$lambda$19(TonFragmentPremiumRecycleAdapter this_with, FragmentPremiumFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof TonFragmentItem.C1535Premium) {
            this$0.getPresenter().onProductItemClick((TonFragmentItem.C1535Premium) baseNode);
        }
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recyclerProducts;
        TonFragmentPremiumRecycleAdapter productsRecycleAdapter = getProductsRecycleAdapter();
        GlobalStateProvider globalStateProvider = productsRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setWhiteBackground(true);
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$setupRecycleView$1$1$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FragmentPremiumPresenter presenter;
                presenter = FragmentPremiumFragment.this.getPresenter();
                presenter.loadPlans();
            }
        });
        productsRecycleAdapter.setDiffCallback(new TonFragmentPremiumDiffCallback());
        recyclerView.setAdapter(productsRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setItemAnimator(null);
    }

    private final void setupViews() {
        this.actionBar.setAddToContainer(false);
        final ForkFragmentFragmentPremiumBinding binding = getBinding();
        FrameLayout frameLayout = binding.framePremiumStarContainer;
        frameLayout.addView(getStarParticlesView(), LayoutHelper.createFrame(-1, 200, 17));
        frameLayout.addView(getStarTextureView(), LayoutHelper.createFrame(200, 200, 17));
        final FrameLayout setupViews$lambda$30$lambda$26 = binding.frameButtonContainer;
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$30$lambda$26, "setupViews$lambda$30$lambda$26");
        if (!ViewCompat.isLaidOut(setupViews$lambda$30$lambda$26) || setupViews$lambda$30$lambda$26.isLayoutRequested()) {
            setupViews$lambda$30$lambda$26.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    NestedScrollView nestedRoot = ForkFragmentFragmentPremiumBinding.this.nestedRoot;
                    Intrinsics.checkNotNullExpressionValue(nestedRoot, "nestedRoot");
                    nestedRoot.setPadding(nestedRoot.getPaddingLeft(), nestedRoot.getPaddingTop(), nestedRoot.getPaddingRight(), ForkFragmentFragmentPremiumBinding.this.nestedRoot.getPaddingBottom() + setupViews$lambda$30$lambda$26.getMeasuredHeight());
                }
            });
        } else {
            NestedScrollView nestedRoot = binding.nestedRoot;
            Intrinsics.checkNotNullExpressionValue(nestedRoot, "nestedRoot");
            nestedRoot.setPadding(nestedRoot.getPaddingLeft(), nestedRoot.getPaddingTop(), nestedRoot.getPaddingRight(), binding.nestedRoot.getPaddingBottom() + setupViews$lambda$30$lambda$26.getMeasuredHeight());
        }
        setupViews$lambda$30$lambda$26.addView(getActionButton(), LayoutHelper.createFrame(-1, 48));
        ActionBarMenuItem setupViews$lambda$30$lambda$28 = binding.buttonBack;
        setupViews$lambda$30$lambda$28.setIcon(C3634R.C3636drawable.ic_ab_back);
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$30$lambda$28, "setupViews$lambda$30$lambda$28");
        ViewGroup.LayoutParams layoutParams = setupViews$lambda$30$lambda$28.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        ViewGroup.LayoutParams layoutParams3 = setupViews$lambda$30$lambda$28.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        layoutParams2.setMargins(((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin, (marginLayoutParams != null ? marginLayoutParams.topMargin : 0) + AndroidUtilities.statusBarHeight, ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        setupViews$lambda$30$lambda$28.setLayoutParams(layoutParams2);
        binding.textTitle.setText(getResourceManager().getString(C3634R.string.fragment_premium_title));
        binding.textSubtitle.setText(getResourceManager().getString(C3634R.string.fragment_premium_subtitle));
        binding.textRecipientTitle.setText(getResourceManager().getString(C3634R.string.wallet_binance_receive_choose_contact_title));
        binding.textRecipientValue.setText(getResourceManager().getString(C3634R.string.wallet_binance_receive_choose_contact_hint));
        binding.textDurationTitle.setText(getResourceManager().getString(C3634R.string.fragment_premium_choose_duration));
        String string = getResourceManager().getString(C3634R.string.fragment_premium_balance);
        TextView textView = binding.textBalance;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string + "xxxxxx");
        spannableStringBuilder.setSpan(new LoadingSpan(binding.textBalance, getLoadingSpanSize()), string.length(), spannableStringBuilder.length(), 33);
        textView.setText(spannableStringBuilder);
    }

    /* compiled from: FragmentPremiumFragment.kt */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FragmentPremiumFragment newInstance() {
            return new FragmentPremiumFragment();
        }
    }
}
