package com.iMe.p032ui.recognition;

import com.iMe.p032ui.base.mvp.AppUpdateRequiredView;
import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: PhotoView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.recognition.PhotoView */
/* loaded from: classes3.dex */
public interface PhotoView extends BaseView, AppUpdateRequiredView {
    void showPhotoObjectsDialog(String str);

    void showPhotoTextDialog(String str);

    void showTranslateDialog(String str);
}
