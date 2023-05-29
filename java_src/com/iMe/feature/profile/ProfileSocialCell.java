package com.iMe.feature.profile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.feature.socialMedias.ContentState;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.CornersOutlineProviderKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkProfileSocialCellBinding;
import org.telegram.p044ui.ActionBar.Theme;
import timber.log.Timber;
/* compiled from: ProfileSocialCell.kt */
/* loaded from: classes3.dex */
public final class ProfileSocialCell extends ConstraintLayout implements KoinComponent {
    private final ForkProfileSocialCellBinding binding;
    private final List<ImageView> cachedImageViews;
    private final Lazy resource$delegate;

    /* compiled from: ProfileSocialCell.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContentState.values().length];
            try {
                iArr[ContentState.CONTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContentState.EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ContentState.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProfileSocialCell(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ProfileSocialCell(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileSocialCell(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new ProfileSocialCell$special$$inlined$inject$default$1(this, null, null));
        this.resource$delegate = lazy;
        this.cachedImageViews = new ArrayList();
        ForkProfileSocialCellBinding inflate = ForkProfileSocialCellBinding.inflate(LayoutInflater.from(context), this);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = inflate;
        buildImageViews();
        inflate.textTitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        inflate.textSubTitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        TextView lambda$1$lambda$0 = inflate.buttonAdd;
        lambda$1$lambda$0.setText(getResource().getString(C3295R.string.social_cell_add_button));
        lambda$1$lambda$0.setBackground(Theme.createSimpleSelectorRoundRectDrawable(4, Theme.getColor(Theme.key_chats_actionBackground), Theme.getColor(Theme.key_chats_actionPressedBackground)));
        lambda$1$lambda$0.setTextColor(Theme.getColor(Theme.key_chats_actionIcon));
        Intrinsics.checkNotNullExpressionValue(lambda$1$lambda$0, "lambda$1$lambda$0");
        CornersOutlineProviderKt.roundCorners$default(lambda$1$lambda$0, BitmapDescriptorFactory.HUE_RED, 1, null);
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    public final ForkProfileSocialCellBinding getBinding() {
        return this.binding;
    }

    public final void updateState(ProfileUiState profileUiState, Function1<? super SocialNetwork, Unit> onNetworkClick, final Function1<? super SocialNetwork, Unit> onNetworkLongClick, Function1<? super List<SocialNetwork>, Unit> onAddButtonClick) {
        int collectionSizeOrDefault;
        SocialNetwork copy;
        Intrinsics.checkNotNullParameter(profileUiState, "profileUiState");
        Intrinsics.checkNotNullParameter(onNetworkClick, "onNetworkClick");
        Intrinsics.checkNotNullParameter(onNetworkLongClick, "onNetworkLongClick");
        Intrinsics.checkNotNullParameter(onAddButtonClick, "onAddButtonClick");
        int i = WhenMappings.$EnumSwitchMapping$0[profileUiState.getContentState().ordinal()];
        String str = "textTitle";
        if (i != 1) {
            if (i == 2) {
                ForkProfileSocialCellBinding forkProfileSocialCellBinding = this.binding;
                TextView buttonAdd = forkProfileSocialCellBinding.buttonAdd;
                Intrinsics.checkNotNullExpressionValue(buttonAdd, "buttonAdd");
                ViewExtKt.gone$default(buttonAdd, false, 1, null);
                TextView textTitle = forkProfileSocialCellBinding.textTitle;
                Intrinsics.checkNotNullExpressionValue(textTitle, "textTitle");
                ViewExtKt.visible$default(textTitle, false, 1, null);
                TextView textSubTitle = forkProfileSocialCellBinding.textSubTitle;
                Intrinsics.checkNotNullExpressionValue(textSubTitle, "textSubTitle");
                ViewExtKt.visible$default(textSubTitle, false, 1, null);
                LinearLayout linearImages = forkProfileSocialCellBinding.linearImages;
                Intrinsics.checkNotNullExpressionValue(linearImages, "linearImages");
                ViewExtKt.gone$default(linearImages, false, 1, null);
                forkProfileSocialCellBinding.textTitle.setText(getResource().getString(C3295R.string.social_cell_not_connected));
                forkProfileSocialCellBinding.textSubTitle.setText(getResource().getString(C3295R.string.social_cell_social_networks));
                return;
            } else if (i == 3) {
                ForkProfileSocialCellBinding forkProfileSocialCellBinding2 = this.binding;
                TextView buttonAdd2 = forkProfileSocialCellBinding2.buttonAdd;
                Intrinsics.checkNotNullExpressionValue(buttonAdd2, "buttonAdd");
                ViewExtKt.gone$default(buttonAdd2, false, 1, null);
                TextView textTitle2 = forkProfileSocialCellBinding2.textTitle;
                Intrinsics.checkNotNullExpressionValue(textTitle2, "textTitle");
                ViewExtKt.gone$default(textTitle2, false, 1, null);
                TextView textSubTitle2 = forkProfileSocialCellBinding2.textSubTitle;
                Intrinsics.checkNotNullExpressionValue(textSubTitle2, "textSubTitle");
                ViewExtKt.visible$default(textSubTitle2, false, 1, null);
                LinearLayout linearImages2 = forkProfileSocialCellBinding2.linearImages;
                Intrinsics.checkNotNullExpressionValue(linearImages2, "linearImages");
                ViewExtKt.invisible$default(linearImages2, false, 1, null);
                forkProfileSocialCellBinding2.textTitle.setText(getResource().getString(C3295R.string.social_cell_not_connected));
                forkProfileSocialCellBinding2.textSubTitle.setText(getResource().getString(C3295R.string.social_cell_social_networks));
                return;
            } else {
                Timber.m7e("updateState is not handled", new Object[0]);
                return;
            }
        }
        ForkProfileSocialCellBinding forkProfileSocialCellBinding3 = this.binding;
        boolean z = !profileUiState.getHasEditAccess();
        List<SocialNetwork> networks = profileUiState.getNetworks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(networks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SocialNetwork socialNetwork : networks) {
            copy = socialNetwork.copy((r24 & 1) != 0 ? socialNetwork.social : null, (r24 & 2) != 0 ? socialNetwork.socialName : null, (r24 & 4) != 0 ? socialNetwork.icon : null, (r24 & 8) != 0 ? socialNetwork.socialPosition : 0, (r24 & 16) != 0 ? socialNetwork.socialElementId : null, (r24 & 32) != 0 ? socialNetwork.socialElementAvatarUrl : null, (r24 & 64) != 0 ? socialNetwork.socialUserName : null, (r24 & 128) != 0 ? socialNetwork.socialWebUrl : null, (r24 & 256) != 0 ? socialNetwork.isActive : false, (r24 & 512) != 0 ? socialNetwork.hasEditAccess : profileUiState.getHasEditAccess(), (r24 & 1024) != 0 ? socialNetwork.beforeConnectMessage : null);
            arrayList.add(copy);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((SocialNetwork) obj).isActive()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!((SocialNetwork) obj2).isActive()) {
                arrayList3.add(obj2);
            }
        }
        Iterator it = arrayList2.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            final SocialNetwork socialNetwork2 = (SocialNetwork) next;
            ImageView imageView = this.cachedImageViews.get(i2);
            ImageViewExtKt.withGlide$default(imageView, socialNetwork2.getIcon(), null, null, 6, null);
            ViewExtKt.visible$default(imageView, false, 1, null);
            ViewExtKt.safeThrottledClick$default(imageView, 0L, new ProfileSocialCell$updateState$1$1$1$1(onNetworkClick, socialNetwork2), 1, null);
            imageView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iMe.feature.profile.ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    Function1.this.invoke(socialNetwork2);
                    return true;
                }
            });
            it = it;
            i2 = i3;
            str = str;
        }
        String str2 = str;
        for (ImageView imageView2 : this.cachedImageViews.subList(arrayList2.size(), this.cachedImageViews.size())) {
            ViewExtKt.gone$default(imageView2, false, 1, null);
        }
        TextView buttonAdd3 = forkProfileSocialCellBinding3.buttonAdd;
        Intrinsics.checkNotNullExpressionValue(buttonAdd3, "buttonAdd");
        ViewExtKt.gone(buttonAdd3, z || arrayList3.isEmpty());
        TextView buttonAdd4 = forkProfileSocialCellBinding3.buttonAdd;
        Intrinsics.checkNotNullExpressionValue(buttonAdd4, "buttonAdd");
        ViewExtKt.safeThrottledClick$default(buttonAdd4, 0L, new ProfileSocialCell$updateState$1$3(onAddButtonClick, arrayList3), 1, null);
        TextView textSubTitle3 = forkProfileSocialCellBinding3.textSubTitle;
        Intrinsics.checkNotNullExpressionValue(textSubTitle3, "textSubTitle");
        ViewExtKt.visible$default(textSubTitle3, false, 1, null);
        LinearLayout linearImages3 = forkProfileSocialCellBinding3.linearImages;
        Intrinsics.checkNotNullExpressionValue(linearImages3, "linearImages");
        ViewExtKt.visible$default(linearImages3, false, 1, null);
        TextView textView = forkProfileSocialCellBinding3.textTitle;
        Intrinsics.checkNotNullExpressionValue(textView, str2);
        ViewExtKt.visible(textView, arrayList2.isEmpty());
        forkProfileSocialCellBinding3.textTitle.setText(getResource().getString(C3295R.string.social_cell_not_connected));
        forkProfileSocialCellBinding3.textSubTitle.setText(getResource().getString(C3295R.string.social_cell_social_networks));
    }

    private final void buildImageViews() {
        int i = 0;
        while (i < 6) {
            ImageView imageView = new ImageView(getContext());
            int dpToPx = ViewExtKt.getDpToPx(36);
            int dpToPx2 = i == 0 ? ViewExtKt.getDpToPx(2) : ViewExtKt.getDpToPx(5);
            int dpToPx3 = ViewExtKt.getDpToPx(5);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPx, dpToPx);
            layoutParams.setMargins(dpToPx2, 0, dpToPx3, 0);
            imageView.setLayoutParams(layoutParams);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.cachedImageViews.add(imageView);
            this.binding.linearImages.addView(imageView);
            i++;
        }
    }

    /* compiled from: ProfileSocialCell.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
