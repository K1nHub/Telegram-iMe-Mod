package org.telegram.p044ui.Components;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p044ui.Components.Paint.RenderView;
import org.telegram.p044ui.PhotoViewer;
import org.telegram.tgnet.TLRPC$InputDocument;
/* renamed from: org.telegram.ui.Components.IPhotoPaintView */
/* loaded from: classes6.dex */
public interface IPhotoPaintView {
    float adjustPanLayoutHelperProgress();

    int getAdditionalBottom();

    int getAdditionalTop();

    Bitmap getBitmap(ArrayList<VideoEditedInfo.MediaEntity> arrayList, Bitmap[] bitmapArr);

    View getCancelView();

    int getEmojiPadding(boolean z);

    long getLcm();

    List<TLRPC$InputDocument> getMasks();

    float getOffsetTranslationY();

    RenderView getRenderView();

    View getView();

    boolean hasChanges();

    void init();

    void maybeShowDismissalAlert(PhotoViewer photoViewer, Activity activity, Runnable runnable);

    void onBackPressed();

    void onCleanupEntities();

    void onResume();

    boolean onTouch(MotionEvent motionEvent);

    void setOffsetTranslationY(float f, float f2, int i, boolean z);

    void setOnDoneButtonClickedListener(Runnable runnable);

    void setTransform(float f, float f2, float f3, float f4, float f5);

    void shutdown();

    void updateColors();

    void updateZoom(boolean z);

    /* renamed from: org.telegram.ui.Components.IPhotoPaintView$-CC  reason: invalid class name */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        public static View $default$getView(IPhotoPaintView _this) {
            if (_this instanceof View) {
                return (View) _this;
            }
            throw new IllegalArgumentException("You should override getView() if you're not inheriting from it.");
        }
    }
}