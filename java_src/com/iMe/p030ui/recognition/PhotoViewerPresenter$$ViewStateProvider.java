package com.iMe.p030ui.recognition;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.recognition.PhotoViewerPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class PhotoViewerPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new PhotoView$$State();
    }
}
