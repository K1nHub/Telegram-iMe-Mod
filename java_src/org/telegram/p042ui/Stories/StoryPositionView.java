package org.telegram.p042ui.Stories;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p042ui.Cells.DialogCell;
import org.telegram.p042ui.Components.AnimatedTextView;
import org.telegram.p042ui.Stories.PeerStoriesView;
/* renamed from: org.telegram.ui.Stories.StoryPositionView */
/* loaded from: classes6.dex */
public class StoryPositionView {
    int lastHash;
    private final SpannableStringBuilder leftSpace;
    private final SpannableStringBuilder rightSpace;
    AnimatedTextView.AnimatedTextDrawable textDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
    Paint backgroundPaint = new Paint(1);

    public StoryPositionView() {
        this.textDrawable.setTextSize(AndroidUtilities.m102dp(13));
        this.textDrawable.setTextColor(-1);
        this.textDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.backgroundPaint.setColor(ColorUtils.setAlphaComponent(-16777216, 58));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.leftSpace = spannableStringBuilder;
        spannableStringBuilder.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m102dp(1)), 0, 1, 0);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        this.rightSpace = spannableStringBuilder2;
        spannableStringBuilder2.append((CharSequence) " ").setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m102dp(1)), 0, 1, 0);
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
        canvas.translate((((AndroidUtilities.m102dp(4) + peerHeaderView.getLeft()) + peerHeaderView.titleView.getLeft()) + peerHeaderView.titleView.getTextWidth()) - Utilities.clamp((peerHeaderView.titleView.getTextWidth() + currentWidth) - peerHeaderView.titleView.getWidth(), currentWidth, 0), ((peerHeaderView.getY() + peerHeaderView.titleView.getTop()) + (this.textDrawable.getHeight() / 2.0f)) - 1.0f);
        float m102dp = AndroidUtilities.m102dp(8);
        float m102dp2 = AndroidUtilities.m102dp(2);
        AndroidUtilities.rectTmp.set(-m102dp, -m102dp2, this.textDrawable.getCurrentWidth() + m102dp, this.textDrawable.getHeight() + m102dp2);
        this.textDrawable.setAlpha((int) (f * 160.0f));
        this.textDrawable.draw(canvas);
        canvas.restore();
    }
}
