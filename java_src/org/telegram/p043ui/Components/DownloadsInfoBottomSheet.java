package org.telegram.p043ui.Components;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.NestedScrollView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.CacheControlActivity;
/* renamed from: org.telegram.ui.Components.DownloadsInfoBottomSheet */
/* loaded from: classes6.dex */
public class DownloadsInfoBottomSheet extends BottomSheet {
    public static void show(Activity activity, BaseFragment baseFragment) {
        if (baseFragment == null || activity == null) {
            return;
        }
        new DownloadsInfoBottomSheet(activity, baseFragment, false).show();
    }

    public DownloadsInfoBottomSheet(Context context, final BaseFragment baseFragment, boolean z) {
        super(context, z);
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        int i = Theme.key_windowBackgroundWhite;
        fixNavigationBar(getThemedColor(i));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(linearLayout);
        ImageView imageView = new ImageView(context);
        imageView.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector)));
        imageView.setColorFilter(getThemedColor(Theme.key_sheet_other));
        imageView.setImageResource(C3632R.C3634drawable.ic_layer_close);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.DownloadsInfoBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadsInfoBottomSheet.this.lambda$new$0(view);
            }
        });
        int m107dp = AndroidUtilities.m107dp(8);
        imageView.setPadding(m107dp, m107dp, m107dp, m107dp);
        frameLayout.addView(imageView, LayoutHelper.createFrame(36, 36, 8388661, 6, 8, 8, 0));
        StickerImageView stickerImageView = new StickerImageView(context, this.currentAccount);
        stickerImageView.setStickerNum(9);
        stickerImageView.getImageReceiver().setAutoRepeat(1);
        linearLayout.addView(stickerImageView, LayoutHelper.createLinear(110, 110, 1, 0, 26, 0, 0));
        TextView textView = new TextView(context);
        textView.setGravity(1);
        int i2 = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i2));
        textView.setTextSize(1, 20.0f);
        textView.setText(LocaleController.getString("DownloadedFiles", C3632R.string.DownloadedFiles));
        linearLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 21, 20, 21, 0));
        TextView textView2 = new TextView(context);
        textView2.setGravity(1);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(i2));
        textView2.setLineSpacing(textView2.getLineSpacingExtra(), textView2.getLineSpacingMultiplier() * 1.1f);
        textView2.setText(LocaleController.formatString("DownloadedFilesMessage", C3632R.string.DownloadedFilesMessage, new Object[0]));
        linearLayout.addView(textView2, LayoutHelper.createFrame(-1, -2, 0, 28, 7, 28, 0));
        TextView textView3 = new TextView(context);
        textView3.setGravity(17);
        textView3.setEllipsize(TextUtils.TruncateAt.END);
        textView3.setSingleLine(true);
        textView3.setTextSize(1, 14.0f);
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView3.setText(LocaleController.getString("ManageDeviceStorage", C3632R.string.ManageDeviceStorage));
        textView3.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        int m107dp2 = AndroidUtilities.m107dp(8);
        int i3 = Theme.key_featuredStickers_addButton;
        textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m107dp2, Theme.getColor(i3), ColorUtils.setAlphaComponent(Theme.getColor(i), 120)));
        linearLayout.addView(textView3, LayoutHelper.createFrame(-1, 48, 0, 14, 28, 14, 6));
        TextView textView4 = new TextView(context);
        textView4.setGravity(17);
        textView4.setEllipsize(TextUtils.TruncateAt.END);
        textView4.setSingleLine(true);
        textView4.setTextSize(1, 14.0f);
        textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView4.setText(LocaleController.getString("ClearDownloadsList", C3632R.string.ClearDownloadsList));
        textView4.setTextColor(Theme.getColor(i3));
        textView4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), 0, ColorUtils.setAlphaComponent(Theme.getColor(i3), 120)));
        if (Build.VERSION.SDK_INT >= 21) {
            textView4.setLetterSpacing(0.025f);
        }
        linearLayout.addView(textView4, LayoutHelper.createFrame(-1, 48, 0, 14, 0, 14, 6));
        NestedScrollView nestedScrollView = new NestedScrollView(context);
        nestedScrollView.addView(frameLayout);
        setCustomView(nestedScrollView);
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.DownloadsInfoBottomSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadsInfoBottomSheet.this.lambda$new$1(baseFragment, view);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.DownloadsInfoBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadsInfoBottomSheet.this.lambda$new$2(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(BaseFragment baseFragment, View view) {
        dismiss();
        baseFragment.presentFragment(new CacheControlActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        dismiss();
        DownloadController.getInstance(this.currentAccount).clearRecentDownloadedFiles();
    }
}
