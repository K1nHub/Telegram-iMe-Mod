package com.smedialink.p031ui.adapter.provider;

import com.smedialink.model.wallet.home.CryptoAccountItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AvatarDrawable;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.CryptoAccountProvider$convert$2 */
/* loaded from: classes3.dex */
final class CryptoAccountProvider$convert$2 extends Lambda implements Function1<BackupImageView, Unit> {
    final /* synthetic */ CryptoAccountItem $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoAccountProvider$convert$2(CryptoAccountItem cryptoAccountItem) {
        super(1);
        this.$item = cryptoAccountItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
        invoke2(backupImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(BackupImageView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.getImageReceiver().setRoundRadius(applyForView.getResources().getDimensionPixelSize(C3301R.dimen.telegram_avatar_size_medium) / 2);
        TLRPC$User user = this.$item.getUser();
        AvatarDrawable avatarDrawable = new AvatarDrawable(this.$item.getUser());
        avatarDrawable.setColor(Theme.getColor("avatar_backgroundInProfileBlue"));
        Unit unit = Unit.INSTANCE;
        applyForView.setForUserOrChat(user, avatarDrawable);
    }
}
