package kotlinx.datetime;
/* compiled from: Clock.kt */
/* loaded from: classes4.dex */
public final class Clock$System {
    public static final Clock$System INSTANCE = new Clock$System();

    private Clock$System() {
    }

    public Instant now() {
        return Instant.Companion.now();
    }
}
