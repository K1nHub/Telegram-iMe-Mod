package com.iMe.p031ui.music;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.iMe.ui.music.NoPermissionMusicCell */
/* loaded from: classes3.dex */
public final class NoPermissionMusicCell extends LinearLayout {
    private final int buttonDefaultColor;
    private final int buttonPressedColor;
    private final int buttonTextColor;
    private final int iconCircleColor;
    private final int iconColor;
    private final Lazy noPermissionImageView$delegate;
    private final Lazy noPermissionSubtitle$delegate;
    private final Lazy noPermissionTitle$delegate;
    private final Lazy requestButton$delegate;
    private final int subtitleColor;
    private final int titleColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoPermissionMusicCell(Activity context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new NoPermissionMusicCell$noPermissionImageView$2(context, this));
        this.noPermissionImageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new NoPermissionMusicCell$noPermissionTitle$2(context, this));
        this.noPermissionTitle$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new NoPermissionMusicCell$noPermissionSubtitle$2(context, this));
        this.noPermissionSubtitle$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new NoPermissionMusicCell$requestButton$2(context, this));
        this.requestButton$delegate = lazy4;
        this.iconColor = Theme.key_chats_actionIcon;
        this.iconCircleColor = Theme.key_chats_actionBackground;
        this.titleColor = Theme.key_chats_nameMessage_threeLines;
        this.subtitleColor = Theme.key_chats_message;
        this.buttonTextColor = Theme.key_featuredStickers_buttonText;
        this.buttonDefaultColor = Theme.key_featuredStickers_addButton;
        this.buttonPressedColor = Theme.key_featuredStickers_addButtonPressed;
        setGravity(17);
        setOrientation(1);
        addView(getNoPermissionImageView(), LayoutHelper.createLinear(100, 100));
        addView(getNoPermissionTitle(), LayoutHelper.createLinear(-1, -2, 16.0f, 16.0f, 16.0f, (float) BitmapDescriptorFactory.HUE_RED));
        addView(getNoPermissionSubtitle(), LayoutHelper.createLinear(-1, -2, 16.0f, 10.0f, 16.0f, (float) BitmapDescriptorFactory.HUE_RED));
        addView(getRequestButton(), LayoutHelper.createLinear(-2, 42, (float) BitmapDescriptorFactory.HUE_RED, 20.0f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
    }

    private final ImageView getNoPermissionImageView() {
        return (ImageView) this.noPermissionImageView$delegate.getValue();
    }

    private final TextView getNoPermissionTitle() {
        return (TextView) this.noPermissionTitle$delegate.getValue();
    }

    private final TextView getNoPermissionSubtitle() {
        return (TextView) this.noPermissionSubtitle$delegate.getValue();
    }

    private final TextView getRequestButton() {
        return (TextView) this.requestButton$delegate.getValue();
    }

    public final List<ThemeDescription> getThemeDescriptions() {
        List<ThemeDescription> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ThemeDescription[]{new ThemeDescription(getNoPermissionImageView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, this.iconColor), new ThemeDescription(getNoPermissionImageView(), ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, this.iconCircleColor), new ThemeDescription(getNoPermissionTitle(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, this.titleColor), new ThemeDescription(getNoPermissionSubtitle(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, this.subtitleColor), new ThemeDescription(getRequestButton(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, this.buttonTextColor), new ThemeDescription(getRequestButton(), ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, this.buttonDefaultColor), new ThemeDescription(getRequestButton(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, this.buttonPressedColor)});
        return listOf;
    }
}
