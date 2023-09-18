package moxy.presenter;

import moxy.MvpPresenter;
/* loaded from: classes6.dex */
public abstract class PresenterField<PresentersContainer> {
    protected final Class<? extends MvpPresenter> presenterClass;
    protected final String presenterId;
    protected final String tag;

    public abstract void bind(PresentersContainer presenterscontainer, MvpPresenter mvpPresenter);

    public abstract MvpPresenter<?> providePresenter(PresentersContainer presenterscontainer);

    /* JADX INFO: Access modifiers changed from: protected */
    public PresenterField(String str, String str2, Class<? extends MvpPresenter> cls) {
        this.tag = str;
        this.presenterId = str2;
        this.presenterClass = cls;
    }

    public String getTag(PresentersContainer presenterscontainer) {
        return this.tag;
    }

    public String getPresenterId() {
        return this.presenterId;
    }

    public Class<? extends MvpPresenter> getPresenterClass() {
        return this.presenterClass;
    }
}
