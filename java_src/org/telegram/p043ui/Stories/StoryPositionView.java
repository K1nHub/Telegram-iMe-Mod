package org.telegram.p043ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Stories.PeerStoriesView;
/* renamed from: org.telegram.ui.Stories.StoryPositionView */
/* loaded from: classes6.dex */
public class StoryPositionView {
    int lastHash;
    private final SpannableStringBuilder leftSpace;
    private final SpannableStringBuilder rightSpace;
    AnimatedTextView.AnimatedTextDrawable textDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
    Paint backgroundPaint = new Paint(1);

    public StoryPositionView() {
        this.textDrawable.setTextSize(AndroidUtilities.m107dp(13));
        this.textDrawable.setTextColor(-1);
        this.textDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.backgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 58));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.leftSpace = spannableStringBuilder;
        spannableStringBuilder.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m107dp(1)), 0, 1, 0);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        this.rightSpace = spannableStringBuilder2;
        spannableStringBuilder2.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m107dp(1)), 0, 1, 0);
    }

    public void draw(Canvas canvas, float f, int i, int i2, FrameLayout frameLayout, PeerStoriesView.PeerHeaderView peerHeaderView) {
        int currentWidth;
        int i3 = (i2 << 12) + i;
        if (this.lastHash != i3) {
            this.lastHash = i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) String.valueOf(i + 1)).append((CharSequence) this.leftSpace).append((CharSequence) "/").append((CharSequence) this.rightSpace).append((CharSequence) String.valueOf(i2));
            this.textDrawable.setText(spannableStringBuilder, false);
        }
        canvas.save();
        peerHeaderView.titleView.setRightPadding((int) this.textDrawable.getCurrentWidth());
        canvas.translate(((((AndroidUtilities.m107dp(4) + peerHeaderView.getLeft()) + peerHeaderView.titleView.getLeft()) + peerHeaderView.titleView.getTextWidth()) + peerHeaderView.titleView.getRightDrawableWidth()) - Utilities.clamp(((peerHeaderView.titleView.getTextWidth() + peerHeaderView.titleView.getRightDrawableWidth()) + currentWidth) - peerHeaderView.titleView.getWidth(), currentWidth, 0), ((peerHeaderView.getY() + peerHeaderView.titleView.getTop()) + (this.textDrawable.getHeight() / 2.0f)) - 1.0f);
        float m107dp = AndroidUtilities.m107dp(8);
        float m107dp2 = AndroidUtilities.m107dp(2);
        AndroidUtilities.rectTmp.set(-m107dp, -m107dp2, this.textDrawable.getCurrentWidth() + m107dp, this.textDrawable.getHeight() + m107dp2);
        this.textDrawable.setAlpha((int) (f * 160.0f));
        this.textDrawable.draw(canvas);
        canvas.restore();
    }
}
