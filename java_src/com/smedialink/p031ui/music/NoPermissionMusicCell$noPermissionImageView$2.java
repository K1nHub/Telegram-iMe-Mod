package com.smedialink.p031ui.music;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.smedialink.ui.music.NoPermissionMusicCell$noPermissionImageView$2 */
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
        String str;
        String str2;
        ImageView imageView = new ImageView(this.$context);
        NoPermissionMusicCell noPermissionMusicCell = this.this$0;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        str = noPermissionMusicCell.iconColor;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(str), PorterDuff.Mode.SRC_IN));
        int m51dp = AndroidUtilities.m51dp(100.0f);
        str2 = noPermissionMusicCell.iconCircleColor;
        imageView.setBackground(Theme.createCircleDrawable(m51dp, Theme.getColor(str2)));
        imageView.setImageResource(C3286R.C3288drawable.fork_music_device_no_storage_permission);
        return imageView;
    }
}
