package com.smedialink.p031ui.recognition;

import com.smedialink.p031ui.base.mvp.AppUpdateRequiredView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: PhotoView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.recognition.PhotoView */
/* loaded from: classes3.dex */
public interface PhotoView extends BaseView, AppUpdateRequiredView {
    void showPhotoObjectsDialog(String str);

    void showPhotoTextDialog(String str);

    void showTranslateDialog(String str);
}
