package p034j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC2907e {

    /* renamed from: a */
    protected final int f931a;

    /* renamed from: b */
    protected int f932b;

    /* renamed from: c */
    protected int f933c;

    /* renamed from: d */
    protected long[] f934d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2907e() {
        this.f931a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2907e(int i) {
        if (i >= 0) {
            this.f931a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f933c;
        return i == 0 ? this.f932b : this.f934d[i] + this.f932b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m416s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f931a : Math.min((this.f931a + i) - 1, 30));
    }
}
