package org.telegram.p043ui;

import com.iMe.p030ui.recognition.PhotoViewerPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.PresenterBinder;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.PhotoViewer$$PresentersBinder */
/* loaded from: classes5.dex */
public class PhotoViewer$$PresentersBinder extends PresenterBinder<PhotoViewer> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super PhotoViewer>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new RecognitionPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: PhotoViewer$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.PhotoViewer$$PresentersBinder$RecognitionPresenterBinder */
    /* loaded from: classes5.dex */
    public class RecognitionPresenterBinder extends PresenterField<PhotoViewer> {
        public RecognitionPresenterBinder(PhotoViewer$$PresentersBinder photoViewer$$PresentersBinder) {
            super("recognitionPresenter", null, PhotoViewerPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(PhotoViewer photoViewer, MvpPresenter mvpPresenter) {
            photoViewer.recognitionPresenter = (PhotoViewerPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(PhotoViewer photoViewer) {
            return photoViewer.providePresenter();
        }
    }
}
