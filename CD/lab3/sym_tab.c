#include "sym_tab.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

table *init_table() {
  table *temp = malloc(sizeof(table));
  temp->head = NULL;
  t = temp;    // Assigning and tracking from internal static variable
  return temp; // Stores it in static table t from yacc side
}

symbol *init_symbol(char *name, int size, int type, int lineno,
                    int scope) // allocates space for items in the list
{
  symbol *temp_sym = malloc(sizeof(symbol));
  temp_sym->name = name;
  temp_sym->len = size;
  temp_sym->type = type;
  temp_sym->scope = scope;
  temp_sym->line = lineno;
  temp_sym->next = NULL;
  return temp_sym;
}

void insert_symbol(char *name, int len, int type, int lineno, int scope) {
  symbol *sym = init_symbol(name, len, type, lineno, scope);
  if (t->head == NULL) {
    t->head = sym;
  } else {
    symbol *head = t->head;
    while (head->next != NULL) {
      head = head->next;
    }
    head->next = sym;
  }
}
void insert_val(char *name, char *v, int line) {
  symbol *head = t->head;
  while (head != NULL) {
    if (strcmp(name, head->name) == 0) {
      head->val = v;
      return;
    }
    head = head->next;
  }
}

int check_sym_tab(char *name) {
  symbol *head = t->head;
  while (head != NULL) {
    if (strcmp(name, head->name) == 0) {
      head->name = name;
      return 1; // 1 for exists
    }
    head = head->next;
  }
  return 0;
}
void display_sym_tab() {
  symbol *head = t->head;
  printf("Synbol table for program : \n");
  printf("name\tlen\ttype\tline_no\tscope\tvalue \n");
  while (head != NULL) {
    if (head->val == NULL) {
      printf("%s %7d %7d %8d %6d \t  ~ \n", head->name, head->len, head->type,
             head->line, head->scope);
    } else {
      printf("%s %7d %7d %8d %6d %12s \n", head->name, head->len, head->type,
             head->line, head->scope, head->val);
    }
    head = head->next;
  }
}

char *retrieve_val(char *name) {
  symbol *head = t->head;
  while (head != NULL) {
    if (strcmp(name, head->name) == 0) {
      head->name = name;
      return head->val; // 1 for exists
    }
    head = head->next;
  }
  return NULL;
}
int retrieve_type(char *name) {
  symbol *head = t->head;
  while (head != NULL) {
    if (strcmp(name, head->name) == 0) {
      head->name = name;
      return head->type; // 1 for exists
    }
    head = head->next;
  }
  return -1;
}

int type_check(char *value) {
   //First chekc is char
   if (value[0] == '\0'){
      return FLOAT;
   }
   int temp = value[0];
   if(value[1] == '\0' && (temp<48 && temp>57)){
      //i.e not number
      return CHAR;
   }
   
   int i=0;
   bool is_float = false;
   while(value[i] != '\0'){
      if(value[i]==46){
         is_float = true;
         i++;
         continue;
      }
      if(value[i]>=48 && value[i]<=57){
         i++;
         continue;
      }else{
         return CHAR;
      }
   }
   if(!is_float){
      return INT;
   }
   return FLOAT;
}
