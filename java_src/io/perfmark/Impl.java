package io.perfmark;
/* loaded from: classes4.dex */
public class Impl {
    static final Tag NO_TAG = new Tag("", Long.MIN_VALUE);
    static final Link NO_LINK = new Link(Long.MIN_VALUE);

    /* JADX INFO: Access modifiers changed from: protected */
    public void event(String str, Tag tag) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void linkIn(Link link) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startTask(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startTask(String str, Tag tag) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stopTask(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stopTask(String str, Tag tag) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Impl(Tag tag) {
        if (tag != NO_TAG) {
            throw new AssertionError("nope");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Link linkOut() {
        return NO_LINK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Tag createTag(String str, long j) {
        return NO_TAG;
    }
}
