package moxy;

import moxy.OnDestroyListener;
/* loaded from: classes6.dex */
public interface OnDestroyListener {
    public static final OnDestroyListener EMPTY = new OnDestroyListener() { // from class: moxy.OnDestroyListener$$ExternalSyntheticLambda0
        @Override // moxy.OnDestroyListener
        public final void onDestroy() {
            OnDestroyListener.CC.lambda$static$0();
        }
    };

    /* renamed from: moxy.OnDestroyListener$-CC  reason: invalid class name */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        static {
            OnDestroyListener onDestroyListener = OnDestroyListener.EMPTY;
        }

        public static /* synthetic */ void lambda$static$0() {
        }
    }

    void onDestroy();
}
