package com.iMe.p031ui.music;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.iMe.ui.music.NoPermissionMusicCell$noPermissionImageView$2 */
/* loaded from: classes3.dex */
public final class NoPermissionMusicCell$noPermissionImageView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ Activity $context;
    final /* synthetic */ NoPermissionMusicCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoPermissionMusicCell$noPermissionImageView$2(Activity activity, NoPermissionMusicCell noPermissionMusicCell) {
        super(0);
        this.$context = activity;
        this.this$0 = noPermissionMusicCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        int i;
        int i2;
        ImageView imageView = new ImageView(this.$context);
        NoPermissionMusicCell noPermissionMusicCell = this.this$0;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        i = noPermissionMusicCell.iconColor;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
        int m55dp = AndroidUtilities.m55dp(100.0f);
        i2 = noPermissionMusicCell.iconCircleColor;
        imageView.setBackground(Theme.createCircleDrawable(m55dp, Theme.getColor(i2)));
        imageView.setImageResource(C3417R.C3419drawable.fork_music_device_no_storage_permission);
        return imageView;
    }
}
