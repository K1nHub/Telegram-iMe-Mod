package com.iMe.p030ui.adapter.provider;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.DrawableKt;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.helper.GlideHelper;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.LoadingDrawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NftCollectionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$1 */
/* loaded from: classes.dex */
public final class NftCollectionProvider$convert$1 extends Lambda implements Function1<BackupImageView, Unit> {
    final /* synthetic */ NftCollectionItem $item;
    final /* synthetic */ NftCollectionProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NftCollectionProvider$convert$1(NftCollectionProvider nftCollectionProvider, NftCollectionItem nftCollectionItem) {
        super(1);
        this.this$0 = nftCollectionProvider;
        this.$item = nftCollectionItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
        invoke2(backupImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final BackupImageView applyForView) {
        float imageCornerRadius;
        float imageCornerRadius2;
        boolean endsWith$default;
        NftToken token;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setAspectFit(true);
        applyForView.setLayerNum(1);
        imageCornerRadius = this.this$0.getImageCornerRadius();
        applyForView.setRoundRadius((int) imageCornerRadius);
        LoadingDrawable loadingDrawable = new LoadingDrawable();
        NftCollectionProvider nftCollectionProvider = this.this$0;
        loadingDrawable.setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), ViewExtKt.withAlpha(-1, 0.15f));
        loadingDrawable.setAppearByGradient(true);
        imageCornerRadius2 = nftCollectionProvider.getImageCornerRadius();
        loadingDrawable.setRadiiDp(imageCornerRadius2);
        applyForView.setBackground(loadingDrawable);
        applyForView.shouldResetBackGroundOnLoaded = true;
        String imageUrl = this.$item.getCollection().getImageUrl();
        NftCollectionItem nftCollectionItem = this.$item;
        if (imageUrl.length() == 0) {
            NftTokenItem nftTokenItem = (NftTokenItem) CollectionsKt.firstOrNull((List<? extends Object>) nftCollectionItem.getTokens());
            String imageUrl2 = (nftTokenItem == null || (token = nftTokenItem.getToken()) == null) ? null : token.getImageUrl();
            if (imageUrl2 == null) {
                imageUrl2 = "";
            }
            imageUrl = imageUrl2;
        }
        String str = imageUrl;
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "svg", false, 2, null);
        if (endsWith$default) {
            Context context = applyForView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            GlideHelper.loadImageAsDrawable$default(context, str, new Callbacks$Callback1() { // from class: com.iMe.ui.adapter.provider.NftCollectionProvider$convert$1$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    NftCollectionProvider$convert$1.invoke$lambda$2(BackupImageView.this, (Drawable) obj);
                }
            }, false, 8, null);
            return;
        }
        applyForView.setImage(str, "50_50", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(BackupImageView this_applyForView, Drawable drawable) {
        Intrinsics.checkNotNullParameter(this_applyForView, "$this_applyForView");
        Intrinsics.checkNotNullExpressionValue(drawable, "drawable");
        this_applyForView.setImageBitmap(DrawableKt.toBitmap$default(drawable, 0, 0, null, 7, null));
    }
}
