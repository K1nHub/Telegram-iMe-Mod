package org.telegram.p043ui.Stories;

import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.p042tl.TL_stories$PeerStories;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_getStoriesViews;
import org.telegram.tgnet.p042tl.TL_stories$TL_stories_storyViews;
/* renamed from: org.telegram.ui.Stories.ViewsForPeerStoriesRequester */
/* loaded from: classes6.dex */
public class ViewsForPeerStoriesRequester {
    private static long lastRequestTime;
    final int currentAccount;
    int currentReqId;
    final long dialogId;
    boolean isRunning;
    final Runnable scheduleRequestRunnable = new Runnable() { // from class: org.telegram.ui.Stories.ViewsForPeerStoriesRequester$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ViewsForPeerStoriesRequester.this.lambda$new$0();
        }
    };
    final StoriesController storiesController;

    public ViewsForPeerStoriesRequester(StoriesController storiesController, long j, int i) {
        this.currentAccount = i;
        this.storiesController = storiesController;
        this.dialogId = j;
    }

    public void start(boolean z) {
        if (this.isRunning == z) {
            return;
        }
        if (z) {
            this.isRunning = true;
            lambda$new$0();
            return;
        }
        this.isRunning = false;
        AndroidUtilities.cancelRunOnUIThread(this.scheduleRequestRunnable);
        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.currentReqId, false);
        this.currentReqId = 0;
    }

    protected void getStoryIds(ArrayList<Integer> arrayList) {
        TL_stories$PeerStories stories = this.storiesController.getStories(this.dialogId);
        if (stories == null || stories.stories == null) {
            return;
        }
        for (int i = 0; i < stories.stories.size(); i++) {
            arrayList.add(Integer.valueOf(stories.stories.get(i).f1763id));
        }
    }

    protected boolean updateStories(ArrayList<Integer> arrayList, TL_stories$TL_stories_storyViews tL_stories$TL_stories_storyViews) {
        TL_stories$PeerStories stories;
        if (tL_stories$TL_stories_storyViews == null || tL_stories$TL_stories_storyViews.views == null || (stories = this.storiesController.getStories(this.dialogId)) == null || stories.stories.isEmpty()) {
            return false;
        }
        for (int i = 0; i < tL_stories$TL_stories_storyViews.views.size(); i++) {
            for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                if (stories.stories.get(i2).f1763id == arrayList.get(i).intValue()) {
                    stories.stories.get(i2).views = tL_stories$TL_stories_storyViews.views.get(i);
                }
            }
        }
        this.storiesController.storiesStorage.updateStories(stories);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: step */
    public void lambda$new$0() {
        if (this.isRunning) {
            long currentTimeMillis = 10000 - (System.currentTimeMillis() - lastRequestTime);
            if (currentTimeMillis > 0) {
                AndroidUtilities.cancelRunOnUIThread(this.scheduleRequestRunnable);
                AndroidUtilities.runOnUIThread(this.scheduleRequestRunnable, currentTimeMillis);
            } else if (requestInternal()) {
            } else {
                this.currentReqId = 0;
                this.isRunning = false;
            }
        }
    }

    private boolean requestInternal() {
        if (this.currentReqId != 0) {
            return false;
        }
        final TL_stories$TL_stories_getStoriesViews tL_stories$TL_stories_getStoriesViews = new TL_stories$TL_stories_getStoriesViews();
        getStoryIds(tL_stories$TL_stories_getStoriesViews.f1777id);
        if (tL_stories$TL_stories_getStoriesViews.f1777id.isEmpty()) {
            return false;
        }
        tL_stories$TL_stories_getStoriesViews.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
        this.currentReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories$TL_stories_getStoriesViews, new RequestDelegate() { // from class: org.telegram.ui.Stories.ViewsForPeerStoriesRequester$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ViewsForPeerStoriesRequester.this.lambda$requestInternal$2(tL_stories$TL_stories_getStoriesViews, tLObject, tLRPC$TL_error);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestInternal$2(final TL_stories$TL_stories_getStoriesViews tL_stories$TL_stories_getStoriesViews, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.ViewsForPeerStoriesRequester$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ViewsForPeerStoriesRequester.this.lambda$requestInternal$1(tLObject, tL_stories$TL_stories_getStoriesViews);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestInternal$1(TLObject tLObject, TL_stories$TL_stories_getStoriesViews tL_stories$TL_stories_getStoriesViews) {
        lastRequestTime = System.currentTimeMillis();
        if (tLObject != null) {
            TL_stories$TL_stories_storyViews tL_stories$TL_stories_storyViews = (TL_stories$TL_stories_storyViews) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_stories$TL_stories_storyViews.users, false);
            if (!updateStories(tL_stories$TL_stories_getStoriesViews.f1777id, tL_stories$TL_stories_storyViews)) {
                this.currentReqId = 0;
                this.isRunning = false;
                return;
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
        this.currentReqId = 0;
        if (this.isRunning) {
            AndroidUtilities.cancelRunOnUIThread(this.scheduleRequestRunnable);
            AndroidUtilities.runOnUIThread(this.scheduleRequestRunnable, 10000L);
        }
    }
}
