package org.orbitmvi.orbit.internal.repeatonsubscription;
/* compiled from: Subscription.kt */
/* loaded from: classes6.dex */
public enum Subscription {
    Unsubscribed,
    Subscribed;

    public final boolean isSubscribed() {
        return this == Subscribed;
    }
}
