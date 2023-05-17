package org.telegram.p044ui;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BackDrawable;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.ShadowSectionCell;
import org.telegram.p044ui.Cells.TextCell;
import org.telegram.p044ui.Cells.TopicExceptionCell;
import org.telegram.p044ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.NotificationsSettingsActivity;
import org.telegram.p044ui.ProfileNotificationsActivity;
import org.telegram.p044ui.TopicsFragment;
import org.telegram.p044ui.TopicsNotifySettingsFragments;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_account_updateNotifySettings;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_inputNotifyForumTopic;
import org.telegram.tgnet.TLRPC$TL_inputPeerNotifySettings;
/* renamed from: org.telegram.ui.TopicsNotifySettingsFragments */
/* loaded from: classes5.dex */
public class TopicsNotifySettingsFragments extends BaseFragment {
    Adapter adapter;
    long dialogId;
    HashSet<Integer> exceptionsTopics;
    ArrayList<Item> items;
    RecyclerListView recyclerListView;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$removeException$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public TopicsNotifySettingsFragments(Bundle bundle) {
        super(bundle);
        this.items = new ArrayList<>();
        this.exceptionsTopics = new HashSet<>();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.TopicsNotifySettingsFragments.1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    TopicsNotifySettingsFragments.this.finishFragment();
                }
            }
        });
        this.actionBar.setTitle(LocaleController.getString(C3290R.string.NotificationsExceptions));
        this.recyclerListView = new RecyclerListView(context);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setLayoutManager(new LinearLayoutManager(context));
        RecyclerListView recyclerListView = this.recyclerListView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.recyclerListView.setOnItemClickListener(new C66502());
        frameLayout.addView(this.recyclerListView);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.TopicsNotifySettingsFragments$2 */
    /* loaded from: classes5.dex */
    public class C66502 implements RecyclerListView.OnItemClickListener {
        C66502() {
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
        public void onItemClick(View view, int i) {
            if (TopicsNotifySettingsFragments.this.items.get(i).viewType == 1) {
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", -TopicsNotifySettingsFragments.this.dialogId);
                bundle.putBoolean("for_select", true);
                TopicsFragment topicsFragment = new TopicsFragment(bundle);
                topicsFragment.setExcludeTopics(TopicsNotifySettingsFragments.this.exceptionsTopics);
                topicsFragment.setOnTopicSelectedListener(new TopicsFragment.OnTopicSelectedListener() { // from class: org.telegram.ui.TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda2
                    @Override // org.telegram.p044ui.TopicsFragment.OnTopicSelectedListener
                    public final void onTopicSelected(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                        TopicsNotifySettingsFragments.C66502.this.lambda$onItemClick$1(tLRPC$TL_forumTopic);
                    }
                });
                TopicsNotifySettingsFragments.this.presentFragment(topicsFragment);
            }
            if (TopicsNotifySettingsFragments.this.items.get(i).viewType == 2) {
                TLRPC$TL_forumTopic tLRPC$TL_forumTopic = TopicsNotifySettingsFragments.this.items.get(i).topic;
                Bundle bundle2 = new Bundle();
                bundle2.putLong("dialog_id", TopicsNotifySettingsFragments.this.dialogId);
                bundle2.putInt("topic_id", tLRPC$TL_forumTopic.f1486id);
                bundle2.putBoolean("exception", false);
                ProfileNotificationsActivity profileNotificationsActivity = new ProfileNotificationsActivity(bundle2);
                profileNotificationsActivity.setDelegate(new C66511(tLRPC$TL_forumTopic));
                TopicsNotifySettingsFragments.this.presentFragment(profileNotificationsActivity);
            }
            if (TopicsNotifySettingsFragments.this.items.get(i).viewType == 4) {
                AlertDialog.Builder builder = new AlertDialog.Builder(TopicsNotifySettingsFragments.this.getParentActivity());
                builder.setTitle(LocaleController.getString("NotificationsDeleteAllExceptionTitle", C3290R.string.NotificationsDeleteAllExceptionTitle));
                builder.setMessage(LocaleController.getString("NotificationsDeleteAllExceptionAlert", C3290R.string.NotificationsDeleteAllExceptionAlert));
                builder.setPositiveButton(LocaleController.getString("Delete", C3290R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        TopicsNotifySettingsFragments.C66502.this.lambda$onItemClick$2(dialogInterface, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
                AlertDialog create = builder.create();
                TopicsNotifySettingsFragments.this.showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(final TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", TopicsNotifySettingsFragments.this.dialogId);
            bundle.putInt("topic_id", tLRPC$TL_forumTopic.f1486id);
            bundle.putBoolean("exception", true);
            ProfileNotificationsActivity profileNotificationsActivity = new ProfileNotificationsActivity(bundle);
            profileNotificationsActivity.setDelegate(new ProfileNotificationsActivity.ProfileNotificationsActivityDelegate() { // from class: org.telegram.ui.TopicsNotifySettingsFragments$2$$ExternalSyntheticLambda1
                @Override // org.telegram.p044ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                public final void didCreateNewException(NotificationsSettingsActivity.NotificationException notificationException) {
                    TopicsNotifySettingsFragments.C66502.this.lambda$onItemClick$0(tLRPC$TL_forumTopic, notificationException);
                }

                @Override // org.telegram.p044ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
                public /* synthetic */ void didRemoveException(long j) {
                    ProfileNotificationsActivity.ProfileNotificationsActivityDelegate.CC.$default$didRemoveException(this, j);
                }
            });
            TopicsNotifySettingsFragments.this.presentFragment(profileNotificationsActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(TLRPC$TL_forumTopic tLRPC$TL_forumTopic, NotificationsSettingsActivity.NotificationException notificationException) {
            TopicsNotifySettingsFragments.this.exceptionsTopics.add(Integer.valueOf(tLRPC$TL_forumTopic.f1486id));
            TopicsNotifySettingsFragments.this.updateRows();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.TopicsNotifySettingsFragments$2$1 */
        /* loaded from: classes5.dex */
        public class C66511 implements ProfileNotificationsActivity.ProfileNotificationsActivityDelegate {
            final /* synthetic */ TLRPC$TL_forumTopic val$topic;

            @Override // org.telegram.p044ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
            public void didCreateNewException(NotificationsSettingsActivity.NotificationException notificationException) {
            }

            C66511(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                this.val$topic = tLRPC$TL_forumTopic;
            }

            @Override // org.telegram.p044ui.ProfileNotificationsActivity.ProfileNotificationsActivityDelegate
            public void didRemoveException(long j) {
                TopicsNotifySettingsFragments.this.removeException(this.val$topic.f1486id);
                final TLRPC$TL_forumTopic tLRPC$TL_forumTopic = this.val$topic;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsNotifySettingsFragments$2$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopicsNotifySettingsFragments.C66502.C66511.this.lambda$didRemoveException$0(tLRPC$TL_forumTopic);
                    }
                }, 300L);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$didRemoveException$0(TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
                TopicsNotifySettingsFragments.this.exceptionsTopics.remove(Integer.valueOf(tLRPC$TL_forumTopic.f1486id));
                TopicsNotifySettingsFragments.this.updateRows();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(DialogInterface dialogInterface, int i) {
            Iterator<Integer> it = TopicsNotifySettingsFragments.this.exceptionsTopics.iterator();
            while (it.hasNext()) {
                TopicsNotifySettingsFragments.this.removeException(it.next().intValue());
            }
            TopicsNotifySettingsFragments.this.exceptionsTopics.clear();
            TopicsNotifySettingsFragments.this.updateRows();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeException(int i) {
        getNotificationsController().getNotificationsSettingsFacade().clearPreference(this.dialogId, i);
        TLRPC$TL_account_updateNotifySettings tLRPC$TL_account_updateNotifySettings = new TLRPC$TL_account_updateNotifySettings();
        tLRPC$TL_account_updateNotifySettings.settings = new TLRPC$TL_inputPeerNotifySettings();
        TLRPC$TL_inputNotifyForumTopic tLRPC$TL_inputNotifyForumTopic = new TLRPC$TL_inputNotifyForumTopic();
        tLRPC$TL_inputNotifyForumTopic.peer = getMessagesController().getInputPeer(this.dialogId);
        tLRPC$TL_inputNotifyForumTopic.top_msg_id = i;
        tLRPC$TL_account_updateNotifySettings.peer = tLRPC$TL_inputNotifyForumTopic;
        getConnectionsManager().sendRequest(tLRPC$TL_account_updateNotifySettings, TopicsNotifySettingsFragments$$ExternalSyntheticLambda0.INSTANCE);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.dialogId = this.arguments.getLong("dialog_id");
        updateRows();
        return super.onFragmentCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        ArrayList<? extends AdapterWithDiffUtils.Item> arrayList;
        int i = 0;
        if ((this.isPaused || this.adapter == null) ? false : true) {
            arrayList = new ArrayList<>();
            arrayList.addAll(this.items);
        } else {
            arrayList = null;
        }
        this.items.clear();
        this.items.add(new Item(1, null));
        ArrayList<TLRPC$TL_forumTopic> topics = getMessagesController().getTopicsController().getTopics(-this.dialogId);
        if (topics != null) {
            int i2 = 0;
            while (i < topics.size()) {
                if (this.exceptionsTopics.contains(Integer.valueOf(topics.get(i).f1486id))) {
                    this.items.add(new Item(2, topics.get(i)));
                    i2 = 1;
                }
                i++;
            }
            i = i2;
        }
        if (i != 0) {
            this.items.add(new Item(3, null));
            this.items.add(new Item(4, null));
        }
        this.items.add(new Item(3, null));
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.setItems(arrayList, this.items);
        }
    }

    public void setExceptions(HashSet<Integer> hashSet) {
        this.exceptionsTopics = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.TopicsNotifySettingsFragments$Adapter */
    /* loaded from: classes5.dex */
    public class Adapter extends AdapterWithDiffUtils {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            View view2;
            if (i == 1) {
                TextCell textCell = new TextCell(viewGroup.getContext());
                textCell.setTextAndIcon(LocaleController.getString("NotificationsAddAnException", C3290R.string.NotificationsAddAnException), C3290R.C3292drawable.msg_contact_add, true);
                textCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textCell;
            } else if (i == 2) {
                View topicExceptionCell = new TopicExceptionCell(viewGroup.getContext());
                topicExceptionCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = topicExceptionCell;
            } else if (i == 3) {
                view = new ShadowSectionCell(viewGroup.getContext());
            } else if (i == 4) {
                TextCell textCell2 = new TextCell(viewGroup.getContext());
                textCell2.setText(LocaleController.getString("NotificationsDeleteAllException", C3290R.string.NotificationsDeleteAllException), false);
                textCell2.setColors(-1, Theme.key_text_RedRegular);
                textCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = textCell2;
            } else {
                view2 = null;
                view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(view2);
            }
            view2 = view;
            view2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(view2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (TopicsNotifySettingsFragments.this.items.get(i).viewType == 2) {
                TopicExceptionCell topicExceptionCell = (TopicExceptionCell) viewHolder.itemView;
                TopicsNotifySettingsFragments topicsNotifySettingsFragments = TopicsNotifySettingsFragments.this;
                topicExceptionCell.setTopic(topicsNotifySettingsFragments.dialogId, topicsNotifySettingsFragments.items.get(i).topic);
                boolean z = true;
                if (i != TopicsNotifySettingsFragments.this.items.size() - 1 && TopicsNotifySettingsFragments.this.items.get(i + 1).viewType != 2) {
                    z = false;
                }
                topicExceptionCell.drawDivider = z;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return TopicsNotifySettingsFragments.this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return TopicsNotifySettingsFragments.this.items.get(i).viewType;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 2 || viewHolder.getItemViewType() == 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.TopicsNotifySettingsFragments$Item */
    /* loaded from: classes5.dex */
    public class Item extends AdapterWithDiffUtils.Item {
        final TLRPC$TL_forumTopic topic;

        private Item(TopicsNotifySettingsFragments topicsNotifySettingsFragments, int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
            super(i, false);
            this.topic = tLRPC$TL_forumTopic;
        }

        public boolean equals(Object obj) {
            TLRPC$TL_forumTopic tLRPC$TL_forumTopic;
            if (this == obj) {
                return true;
            }
            if (obj == null || Item.class != obj.getClass()) {
                return false;
            }
            Item item = (Item) obj;
            if (this.viewType != item.viewType) {
                return false;
            }
            TLRPC$TL_forumTopic tLRPC$TL_forumTopic2 = this.topic;
            return tLRPC$TL_forumTopic2 == null || (tLRPC$TL_forumTopic = item.topic) == null || tLRPC$TL_forumTopic2.f1486id == tLRPC$TL_forumTopic.f1486id;
        }
    }
}
