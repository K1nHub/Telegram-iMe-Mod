package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2995t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2739H4 extends AbstractC2751J4 implements InterfaceC2995t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2739H4(InterfaceC2995t interfaceC2995t, long j, long j2) {
        super(interfaceC2995t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2739H4(InterfaceC2995t interfaceC2995t, AbstractC2739H4 abstractC2739H4) {
        super(interfaceC2995t, abstractC2739H4);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: forEachRemaining */
    public void m501e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC2898j4 abstractC2898j4 = null;
        while (true) {
            int m493r = m493r();
            if (m493r == 1) {
                return;
            }
            if (m493r != 2) {
                ((InterfaceC2995t) this.f768a).forEachRemaining(obj);
                return;
            }
            if (abstractC2898j4 == null) {
                abstractC2898j4 = mo496t(128);
            } else {
                abstractC2898j4.f972b = 0;
            }
            long j = 0;
            while (((InterfaceC2995t) this.f768a).tryAdvance(abstractC2898j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC2898j4.mo380b(obj, m495p(j));
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo497s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC2898j4 mo496t(int i);

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: tryAdvance */
    public boolean m498k(Object obj) {
        Objects.requireNonNull(obj);
        while (m493r() != 1 && ((InterfaceC2995t) this.f768a).tryAdvance(this)) {
            if (m495p(1L) == 1) {
                mo497s(obj);
                return true;
            }
        }
        return false;
    }
}
