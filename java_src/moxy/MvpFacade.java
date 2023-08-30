package moxy;
/* loaded from: classes4.dex */
public final class MvpFacade {
    private static volatile MvpFacade instance;
    private static final Object lock = new Object();
    private PresentersCounter presentersCounter = new PresentersCounter();
    private PresenterStore presenterStore = new PresenterStore();
    private MvpProcessor mvpProcessor = new MvpProcessor();

    private MvpFacade() {
    }

    public static MvpFacade getInstance() {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new MvpFacade();
                }
            }
        }
        return instance;
    }

    public static void init() {
        getInstance();
    }

    public PresenterStore getPresenterStore() {
        return this.presenterStore;
    }

    public void setPresenterStore(PresenterStore presenterStore) {
        this.presenterStore = presenterStore;
    }

    public MvpProcessor getMvpProcessor() {
        return this.mvpProcessor;
    }

    public void setMvpProcessor(MvpProcessor mvpProcessor) {
        this.mvpProcessor = mvpProcessor;
    }

    public PresentersCounter getPresentersCounter() {
        return this.presentersCounter;
    }

    public void setPresentersCounter(PresentersCounter presentersCounter) {
        this.presentersCounter = presentersCounter;
    }
}
