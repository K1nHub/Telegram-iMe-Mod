package p034j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC2863e {

    /* renamed from: a */
    protected final int f928a;

    /* renamed from: b */
    protected int f929b;

    /* renamed from: c */
    protected int f930c;

    /* renamed from: d */
    protected long[] f931d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2863e() {
        this.f928a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2863e(int i) {
        if (i >= 0) {
            this.f928a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f930c;
        return i == 0 ? this.f929b : this.f931d[i] + this.f929b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m411s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f928a : Math.min((this.f928a + i) - 1, 30));
    }
}
