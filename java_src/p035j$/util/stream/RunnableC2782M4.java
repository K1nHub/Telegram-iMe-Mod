package p035j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2782M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f799a;

    /* renamed from: b */
    final /* synthetic */ Runnable f800b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2782M4(Runnable runnable, Runnable runnable2) {
        this.f799a = runnable;
        this.f800b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f799a.run();
            this.f800b.run();
        } catch (Throwable th) {
            try {
                this.f800b.run();
            } catch (Throwable th2) {
                try {
                    th.addSuppressed(th2);
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
