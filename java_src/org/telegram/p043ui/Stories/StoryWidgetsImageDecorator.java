package org.telegram.p043ui.Stories;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.Components.Reactions.ReactionImageHolder;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import org.telegram.tgnet.p042tl.TL_stories$TL_mediaAreaCoordinates;
import org.telegram.tgnet.p042tl.TL_stories$TL_mediaAreaSuggestedReaction;
/* renamed from: org.telegram.ui.Stories.StoryWidgetsImageDecorator */
/* loaded from: classes6.dex */
public class StoryWidgetsImageDecorator extends ImageReceiver.Decorator {
    ArrayList<DrawingObject> drawingObjects;
    float imageH;
    float imageW;
    float imageX;
    float imageY;

    /* renamed from: org.telegram.ui.Stories.StoryWidgetsImageDecorator$DrawingObject */
    /* loaded from: classes6.dex */
    public static abstract class DrawingObject {
        public abstract void draw(Canvas canvas, ImageReceiver imageReceiver, float f);

        public abstract void onAttachedToWindow(boolean z);

        public abstract void setParent(View view);
    }

    public StoryWidgetsImageDecorator(TL_stories$StoryItem tL_stories$StoryItem) {
        for (int i = 0; i < tL_stories$StoryItem.media_areas.size(); i++) {
            if (tL_stories$StoryItem.media_areas.get(i) instanceof TL_stories$TL_mediaAreaSuggestedReaction) {
                if (this.drawingObjects == null) {
                    this.drawingObjects = new ArrayList<>();
                }
                this.drawingObjects.add(new ReactionWidget((TL_stories$TL_mediaAreaSuggestedReaction) tL_stories$StoryItem.media_areas.get(i)));
            }
        }
    }

    @Override // org.telegram.messenger.ImageReceiver.Decorator
    protected void onDraw(Canvas canvas, ImageReceiver imageReceiver) {
        if (this.drawingObjects == null) {
            return;
        }
        float alpha = imageReceiver.getAlpha();
        float centerX = imageReceiver.getCenterX();
        float centerY = imageReceiver.getCenterY();
        float imageWidth = imageReceiver.getImageWidth();
        this.imageW = imageWidth;
        float f = (16.0f * imageWidth) / 9.0f;
        this.imageH = f;
        this.imageX = centerX - (imageWidth / 2.0f);
        this.imageY = centerY - (f / 2.0f);
        canvas.save();
        canvas.clipRect(imageReceiver.getImageX(), imageReceiver.getImageY(), imageReceiver.getImageX2(), imageReceiver.getImageY2());
        for (int i = 0; i < this.drawingObjects.size(); i++) {
            this.drawingObjects.get(i).draw(canvas, imageReceiver, alpha);
        }
        canvas.restore();
    }

    @Override // org.telegram.messenger.ImageReceiver.Decorator
    public void onAttachedToWindow(ImageReceiver imageReceiver) {
        if (this.drawingObjects == null) {
            return;
        }
        for (int i = 0; i < this.drawingObjects.size(); i++) {
            this.drawingObjects.get(i).setParent(imageReceiver.getParentView());
            this.drawingObjects.get(i).onAttachedToWindow(true);
        }
    }

    @Override // org.telegram.messenger.ImageReceiver.Decorator
    public void onDetachedFromWidnow() {
        if (this.drawingObjects == null) {
            return;
        }
        for (int i = 0; i < this.drawingObjects.size(); i++) {
            this.drawingObjects.get(i).onAttachedToWindow(false);
        }
    }

    /* renamed from: org.telegram.ui.Stories.StoryWidgetsImageDecorator$ReactionWidget */
    /* loaded from: classes6.dex */
    public class ReactionWidget extends DrawingObject {
        TL_stories$TL_mediaAreaSuggestedReaction mediaArea;
        StoryReactionWidgetBackground storyReactionWidgetBackground = new StoryReactionWidgetBackground(null);
        ReactionImageHolder imageHolder = new ReactionImageHolder(null);

        public ReactionWidget(TL_stories$TL_mediaAreaSuggestedReaction tL_stories$TL_mediaAreaSuggestedReaction) {
            this.mediaArea = tL_stories$TL_mediaAreaSuggestedReaction;
            if (tL_stories$TL_mediaAreaSuggestedReaction.flipped) {
                this.storyReactionWidgetBackground.setMirror(true, false);
            }
            if (tL_stories$TL_mediaAreaSuggestedReaction.dark) {
                this.storyReactionWidgetBackground.nextStyle();
            }
            this.imageHolder.setStatic();
            this.imageHolder.setVisibleReaction(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(tL_stories$TL_mediaAreaSuggestedReaction.reaction));
        }

        @Override // org.telegram.p043ui.Stories.StoryWidgetsImageDecorator.DrawingObject
        public void draw(Canvas canvas, ImageReceiver imageReceiver, float f) {
            StoryWidgetsImageDecorator storyWidgetsImageDecorator = StoryWidgetsImageDecorator.this;
            float f2 = storyWidgetsImageDecorator.imageW;
            TL_stories$TL_mediaAreaCoordinates tL_stories$TL_mediaAreaCoordinates = this.mediaArea.coordinates;
            float f3 = (float) (storyWidgetsImageDecorator.imageX + ((f2 * tL_stories$TL_mediaAreaCoordinates.f1768x) / 100.0d));
            float f4 = storyWidgetsImageDecorator.imageH;
            float f5 = (float) (storyWidgetsImageDecorator.imageY + ((f4 * tL_stories$TL_mediaAreaCoordinates.f1769y) / 100.0d));
            float f6 = (float) ((f4 * tL_stories$TL_mediaAreaCoordinates.f1766h) / 100.0d);
            float f7 = ((float) ((f2 * tL_stories$TL_mediaAreaCoordinates.f1767w) / 100.0d)) / 2.0f;
            float f8 = f6 / 2.0f;
            this.storyReactionWidgetBackground.setBounds((int) (f3 - f7), (int) (f5 - f8), (int) (f7 + f3), (int) (f8 + f5));
            this.storyReactionWidgetBackground.setAlpha((int) (255.0f * f));
            canvas.save();
            double d = this.mediaArea.coordinates.rotation;
            if (d != 0.0d) {
                canvas.rotate((float) d, f3, f5);
            }
            Rect rect = AndroidUtilities.rectTmp2;
            float height = (this.storyReactionWidgetBackground.getBounds().height() * 0.61f) / 2.0f;
            rect.set((int) (this.storyReactionWidgetBackground.getBounds().centerX() - height), (int) (this.storyReactionWidgetBackground.getBounds().centerY() - height), (int) (this.storyReactionWidgetBackground.getBounds().centerX() + height), (int) (this.storyReactionWidgetBackground.getBounds().centerY() + height));
            this.storyReactionWidgetBackground.updateShadowLayer(1.0f);
            this.storyReactionWidgetBackground.draw(canvas);
            this.imageHolder.setBounds(rect);
            this.imageHolder.setAlpha(f);
            this.imageHolder.setColor(this.storyReactionWidgetBackground.isDarkStyle() ? -1 : -16777216);
            this.imageHolder.draw(canvas);
            canvas.restore();
        }

        @Override // org.telegram.p043ui.Stories.StoryWidgetsImageDecorator.DrawingObject
        public void onAttachedToWindow(boolean z) {
            this.imageHolder.onAttachedToWindow(z);
        }

        @Override // org.telegram.p043ui.Stories.StoryWidgetsImageDecorator.DrawingObject
        public void setParent(View view) {
            this.imageHolder.setParent(view);
        }
    }
}
